//
//  UITestView.m
//  test1
//
//  Created by jia yu on 2021/12/31.
//

#import "UITestView.h"

@implementation UITestView

-(void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
    
    CGMutablePathRef aPath = CGPathCreateMutable();
    CGPathMoveToPoint(aPath, NULL, 40.f, 40.f);
    CGPathAddLineToPoint(aPath, NULL, 100.f, 100.f);
    CGPathAddLineToPoint(aPath, NULL, 300.f, 100.f);
    CGPathAddLineToPoint(aPath, NULL, 500.f, 90.f);
    CGPathAddLineToPoint(aPath, NULL, 500.f, 300.f) ;
    CGPathAddLineToPoint(aPath, NULL, 0.f, 300.f);
//    CGPathAddLineToPoint(aPath, NULL, 40.f, 40.f);
    CGPathMoveToPoint(aPath, NULL, -1.f, -1.f);
    CGPathCloseSubpath(aPath);
    
    
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
    [shapeLayer setFrame: self.frame];
    [shapeLayer setPath: aPath];
    shapeLayer.lineWidth = 3.0f;
    [shapeLayer setStrokeColor:[[UIColor redColor] CGColor]];
    shapeLayer.fillColor = [[UIColor redColor] CGColor];
    [shapeLayer setMasksToBounds:YES];
    shapeLayer.lineCap = kCALineCapRound;
    shapeLayer.strokeStart = 0.f;
    shapeLayer.strokeEnd = 1.f;

    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.startPoint =  CGPointMake(0.f, 0.f);
    gradientLayer.endPoint = CGPointMake(0.f, 1.f);
    gradientLayer.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    gradientLayer.locations = @[@0.05, @0.1, @1.0];
    gradientLayer.colors = @[(id)[UIColor redColor].CGColor, (id)[UIColor blueColor].CGColor, (id)[UIColor colorWithRed:1.f green:1.f blue:1.f alpha:0.f].CGColor];
    [gradientLayer setMask:shapeLayer];
    [self.layer addSublayer:gradientLayer];
}

@end
