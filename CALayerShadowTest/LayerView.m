//
//  LayerView.m
//  CALayerShadowTest
//
//  Created by 達郎 植田 on 12/08/12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "LayerView.h"
#import "Layer.h"

@implementation LayerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        layer = [Layer layer];
        [self.layer addSublayer:layer];
        layer.frame = CGRectMake(0,0,50,50);
        layer.backgroundColor = [UIColor whiteColor].CGColor;
        layer.shadowColor = [[UIColor blackColor] CGColor];
        layer.shadowOpacity = 0.5;
        layer.shadowPath = [UIBezierPath bezierPathWithRect:layer.bounds].CGPath;
    }
    return self;
}

- (void)move
{
    [CATransaction begin];
    [CATransaction setAnimationDuration:5.0];
    CAMediaTimingFunction *timing = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [CATransaction setAnimationTimingFunction:timing];
    layer.frame = CGRectMake(0,0,100,100);
    [CATransaction commit];    
    
    CABasicAnimation *shadowAnimation = [CABasicAnimation animationWithKeyPath:@"shadowPath"];
    shadowAnimation.duration = 5.0;
    shadowAnimation.fromValue = (id)[UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 50, 50)].CGPath;
    shadowAnimation.toValue = (id)[UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 100, 100)].CGPath;
    [layer addAnimation:shadowAnimation forKey:@"shadow"];
    
//    layer.frame = CGRectMake(0,0,100,100);
//    layer.shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 100, 100)].CGPath;
    
//    [CATransaction commit];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
