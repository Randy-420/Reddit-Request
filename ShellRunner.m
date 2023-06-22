#import "ShellRunner.h"

@implementation ShellRunner
// Method to run a command in the shell and optionally wait until it exits
+ (void)runCommand:(NSString *)command waitUntilExit:(BOOL)waitUntilExit {
    NSTask *task = [[NSTask alloc] init];
    NSMutableArray *args = [NSMutableArray arrayWithObjects:@"-c", command, nil];

    // Set the launch path based on the file existence
    [task setLaunchPath:[[NSFileManager defaultManager] fileExistsAtPath:@"/var/jb/xina"] ? @"/var/bin/bash" : @"/bin/bash"];
    [task setArguments:args];
    [task launch];

    if (waitUntilExit)
        [task waitUntilExit];
}

// Method to run a command in the shell and return the output as a string
+ (NSString *)runCommandWithLog:(NSString *)command {
    NSTask *task = [[NSTask alloc] init];
    NSMutableArray *args = [NSMutableArray array];
    [args addObject:@"-c"];
    [args addObject:command];
    [task setLaunchPath:[[NSFileManager defaultManager] fileExistsAtPath:@"/var/jb/xina"] ? @"/var/bin/bash" : @"/bin/bash"];
    [task setArguments:args];
    NSPipe *outputPipe = [NSPipe pipe];
    [task setStandardInput:[NSPipe pipe]];
    [task setStandardOutput:outputPipe];
    [task launch];
    [task waitUntilExit];

    // Read the output data from the pipe and convert it to a string
    NSData *outputData = [[outputPipe fileHandleForReading] readDataToEndOfFile];
    NSString *outputString = [[NSString alloc] initWithData:outputData encoding:NSUTF8StringEncoding];

    return outputString;
}
@end
