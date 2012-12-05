//
//  ViewController.m
//  CoreGraphicsDemo
//
//  Created by Luis Cruz on 12/2/12.
//  Copyright (c) 2012 Luis Cruz. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

#define PI 3.14159265358979323846
static inline float radians(double degrees) { return degrees * PI / 180; }


@interface ViewController ()

@end

@implementation ViewController

- (void) loadView
{
    
    // Crear una nueva vista y establecerla como vista de esta aplicación
    UIView *appView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	appView.backgroundColor = [UIColor blackColor];
	self.view = appView;
    
    // Crear una nueva capa y establecer sus limites a los limites de la vista
	rootLayer	= [CALayer layer];
	rootLayer.frame = self.view.bounds;
    
    // Agregar la capa a la vista actual
	[self.view.layer addSublayer:rootLayer];
    
    
	//Square Path
    CGPoint center = self.view.center;
    
	
    
    circlePath = [UIBezierPath bezierPath];
    [circlePath moveToPoint:center];
    [circlePath addArcWithCenter:center radius:100 startAngle:radians(-80) endAngle:radians(-90) clockwise:0];
    [circlePath closePath];

    
    startPath = [UIBezierPath bezierPath];
    [startPath moveToPoint:center];
    [startPath addArcWithCenter:center radius:100 startAngle:radians(-70) endAngle:radians(-90) clockwise:0];
    [startPath closePath];


    
    
	//Create Shape
    // Creamos un widget vacio
	shapeLayer = [CAShapeLayer layer];
    
    // El widget será dibujado de acuerdo al path definido
	shapeLayer.path = startPath.CGPath;
    
	UIColor *fillColor = [UIColor colorWithHue:0.584 saturation:0.8 brightness:0.9 alpha:1.0];
        
	shapeLayer.fillColor = fillColor.CGColor;
    
	UIColor *strokeColor = [UIColor colorWithHue:0.557 saturation:0.55 brightness:0.96 alpha:1.0];
    
	shapeLayer.strokeColor = strokeColor.CGColor;
    
	shapeLayer.lineWidth = 1.0;
    
	shapeLayer.fillRule = kCAFillRuleNonZero;
    
	[rootLayer addSublayer:shapeLayer];
    
	[self performSelector:@selector(startAnimation) withObject:nil afterDelay:1.5];
}

-(void)startAnimation
{
	CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"path"];
    
	animation.duration = 2.0;
    
	animation.repeatCount = HUGE_VALF;
    
	animation.autoreverses = YES;
    
	animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
	animation.fromValue = (id)circlePath.CGPath;
    
	animation.toValue = (id)startPath.CGPath;
    
    
	[shapeLayer addAnimation:animation forKey:@"animatePath"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
