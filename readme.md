##Animating a CALayer shadowpath

At first, small square with drop shadow.

![ss](http://farm9.staticflickr.com/8300/7763307590_667eb27f25_o.png)

When button pushed, square and shadow grow bigger together.

![ss](http://farm9.staticflickr.com/8446/7763307668_a4a1f5ec7a_o.png)

The main code is below:

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

You can download this project from GitHub and just run it.

https://github.com/weed/p120812_CALayerShadowTest

This question was very hard for me !   :)