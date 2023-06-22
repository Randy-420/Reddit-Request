#import "ShellRunner.h"
#import <UIKit/UIKit.h>

%hook BackupList
- (bool)restoreDataToContainerPath:(id)arg1 bundleId:(id)arg2 fromPath:(id)arg3 bundleApp:(id)arg4 {
    if ([arg2 isEqualToString:@"com.toyopagroup.picaboo"]) {//Snapchat
        // Run the "BaCkUp.sh" command and wait until it exits
        [ShellRunner runCommand:@"BaCkUp.sh" waitUntilExit:YES];
    }
    return %orig;
}

/*
- (bool)copyDataContainerPath:(id)arg1 bundleId:(id)arg2 toPath:(id)arg3 bundleApp:(id)arg4 {//Snapchat
    if ([arg2 isEqualToString:@"com.toyopagroup.picaboo"]) {
        // Run the "BaCkUp.sh" command and wait until it exits
        [ShellRunner runCommand:@"BaCkUp.sh" waitUntilExit:YES];
    }
    return %orig;
}
*/

- (void)wipeDataContainerPath:(id)arg1 bundleId:(id)arg2 bundleApp:(id)arg3 {
    if ([arg2 isEqualToString:@"com.toyopagroup.picaboo"]) {//Snapchat
        // Run the "BaCkUp.sh" command and wait until it exits
        [ShellRunner runCommand:@"BaCkUp.sh" waitUntilExit:YES];
    }
    %orig;
}
%end