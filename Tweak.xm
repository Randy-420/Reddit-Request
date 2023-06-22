#import <UIKit/UIKit.h>

%hook BackupList
- (void)restoreApp:(id)arg1 fromPathBackup:(id)arg2 progress:(id)arg3 withCompletion:(?)arg4 {
	%orig;
}

- (bool)restoreDataToContainerPath:(id)arg1 bundleId:(id)arg2 fromPath:(id)arg3 bundleApp:(id)arg4 {
	return %orig;
}

- (void)wipeApp:(id)arg1 progress:(id)arg2 withCompletion:(?)arg3 {
	%orig;
}

- (bool)copyDataContainerPath:(id)arg1 bundleId:(id)arg2 toPath:(id)arg3 bundleApp:(id)arg4 {
	return %orig;
}

- (void)wipeDataContainerPath:(id)arg1 bundleId:(id)arg2 bundleApp:(id)arg3 {
	%orig;
}
%end