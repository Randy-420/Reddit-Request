#import <UIKit/UIKit.h>

__attribute__ ((constructor)) static void init() {
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
		if (![[NSUserDefaults standardUserDefaults] boolForKey:@"has-seen-notice-FRsIpb"]) {
			UIAlertController *Login = [UIAlertController alertControllerWithTitle:@"Made Flex To Theos" message:@"Premium Unlocked Free - Randy420" preferredStyle:UIAlertControllerStyleAlert];
			UIAlertAction *action;

		action = [UIAlertAction actionWithTitle:@"Learn How To Code" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
			[Login dismissViewControllerAnimated:YES completion:^{
				[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://t.me/iOS-Randy-420"] options:@{} completionHandler:nil];
				//Dismissed
			}];
		}];
		[Login addAction:action];

		action = [UIAlertAction actionWithTitle:@"My Links" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
			[Login dismissViewControllerAnimated:YES completion:^{
				[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://linktr.ee/Randy420"] options:@{} completionHandler:nil];
				//Dismissed
			}];
		}];
		[Login addAction:action];

		action = [UIAlertAction actionWithTitle:@"My Repo" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
			[Login dismissViewControllerAnimated:YES completion:^{
				[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://Randy-420.GitHub.io"] options:@{} completionHandler:nil];
				//Dismissed
			}];
		}];
		[Login addAction:action];

		action = [UIAlertAction actionWithTitle:@"X" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
			[Login dismissViewControllerAnimated:YES completion:^{
				//Dismissed
			}];
		}];
		[Login addAction:action];

			[[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:Login animated:true completion:nil];
/*			dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(14.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
				[Login dismissViewControllerAnimated:YES completion:^{
					//Dismissed
				}];*/
			});
			[[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"has-seen-notice-FRsIpb"];
		}
	});
}