//
//  MyView.m
//  CoreGraphicsDemo
//
//  Created by Luis Cruz on 12/2/12.
//  Copyright (c) 2012 Luis Cruz. All rights reserved.
//

#import "MyView.h"
#import <QuartzCore/QuartzCore.h>

#define PI 3.14159265358979323846
static inline float radians(double degrees) { return degrees * PI / 180; }

@implementation MyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{

    /*CGContextRef context = UIGraphicsGetCurrentContext();
    CGColorRef redColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0].CGColor;
    CGContextSetFillColorWithColor(context, redColor);
    CGContextFillRect(context, self.bounds);*/
    
    /*[UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelay:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    */
    /*
    UIBezierPath *circlePath = [UIBezierPath bezierPath];
    [circlePath moveToPoint:self.center];
    [circlePath addArcWithCenter:self.center radius:100 startAngle:radians(0) endAngle:radians(270) clockwise:0];
    [circlePath closePath];

    CAShapeLayer* customLayer = [CAShapeLayer layer];
    [customLayer setPath:circlePath.CGPath];
    [self.layer addSublayer:customLayer];*/
    
    //[customLayer setShadowOpacity:1.0f];
    //[customLayer setShadowColor:[[UIColor colorWithWhite:1 alpha:1] CGColor]];
    //[customLayer setShadowOffset:CGSizeMake(2.0f, 2.0f)];
    //[customLayer setShadowRadius:5];
    
    /*[customLayer addAnimation:morph forKey:nil];
    // Causes the inner region in this example to NOT be filled.
    //77[customLayer setFillRule:kCAFillRuleEvenOdd];
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, CGRectInset(self.bounds, -42.0f, -42.0f));
    // Add the inner path so it's subtracted from the outer path.
    CGPathAddPath(path, NULL, circlePath.CGPath);
    
    CGPathCloseSubpath(path);
    
    
    CGPathRelease(path);*/

    //[self.layer setMasksToBounds:YES];
   
    
}


@end
