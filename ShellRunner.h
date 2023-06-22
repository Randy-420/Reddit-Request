#include "NSTask.h"

#define _POSIX_SPAWN_DISABLE_ASLR 0x0100
#define _POSIX_SPAWN_ALLOW_DATA_EXEC 0x2000
extern char **environ;

// Utility class for running shell commands
@interface ShellRunner : NSObject
+(void) runCommand:(NSString *)command waitUntilExit:(BOOL)waitUntilExit;
+(NSString *) runCommandWithLog:(NSString *)command;
@end