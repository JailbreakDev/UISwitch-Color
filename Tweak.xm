#import <UIKit/UIKit.h>

/*
Available Colors

blackColor
darkGrayColor
lightGrayColor
whiteColor
grayColor
redColor
greenColor
blueColor
cyanColor
yellowColor
magentaColor
orangeColor
purpleColor
brownColor
clearColor

*/

%hook UISwitch

-(UIColor *)onTintColor {
	return [UIColor blackColor];
}

-(void)setOnTintColor:(UIColor *)color {
	color = [UIColor blackColor];
	%orig(color);
}

- (id)initWithFrame:(CGRect)frame {

	self = %orig;

	if (self) {

		self.onTintColor = [UIColor blackColor];
		[self setOnTintColor:[UIColor blackColor]];
	}

	return self;
}

%end