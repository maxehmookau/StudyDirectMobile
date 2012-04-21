//
//  UILoginButton.h
//  StudyDirectMobile
//
//  Created by Max Woolf on 20/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
@interface UILoginButton : UIButton
{
    UIColor *_highColor;
    UIColor *_lowColor;
    CAGradientLayer *gradientLayer;
    CALayer *wrapperLayer;
    CGColorRef _borderColor;
}

@property (nonatomic, retain) UIColor *_highColor;
@property (nonatomic, retain) UIColor *_lowColor;
@property (nonatomic) CGColorRef _borderColor;
@property (nonatomic, retain) CALayer *wrapperLayer;
@property (nonatomic, retain) CAGradientLayer *gradientLayer;

- (void)setHighColor:(UIColor*)color;
- (void)setLowColor:(UIColor*)color;
- (void)setBorderColor:(CGColorRef)color;
- (void)setCornerRadius:(float)radius;

@end
