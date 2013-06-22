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

//hooking the UISwitch Class
%hook UISwitch

//overwriting the onTintColor method and change the color to be always red
-(void)setOnTintColor:(UIColor *)color {

color = [UIColor redColor];

%orig(color);

}

//overwriting the getter method
-(UIColor *)onTintColor {

return [UIColor redColor];

}

//when the switches are created, change the color to redColor
-(id)initWithFrame:(CGRect)frame {

self = %orig;

if (self) {

[self setOnTintColor:[UIColor redColor]];

}

return self;

}

%end