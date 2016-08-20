#import <UIKit/UIKit.h>

%hook AuthToken

-(id)token
{
	NSString* tt = %orig;
	dispatch_async(dispatch_get_main_queue(), ^{
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"access token"
												 	message:tt
												 	delegate:nil 
												 	cancelButtonTitle:@"OK" 
												 	otherButtonTitles:nil];
		[alert show];
		[alert release];
	});
	return tt;
}

%end

%hook _UINavigationBarBackground

-(void)setBarTintColor:(id)arg
{
	%orig([UIColor blackColor]);
}

%end