//
//  ViewController.h
//  CoreGraphicsDemo
//
//  Created by Luis Cruz on 12/2/12.
//  Copyright (c) 2012 Luis Cruz. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <QuartzCore/QuartzCore.h>
@interface ViewController : UIViewController {
    
	CALayer						*rootLayer;
    
	CAShapeLayer			*shapeLayer;
    
	CGMutablePathRef		squarePath;
	CGMutablePathRef		roundPath;
	CGMutablePathRef		boxPath;
    UIBezierPath            *circlePath;
    UIBezierPath            *startPath;
    
}

@end

