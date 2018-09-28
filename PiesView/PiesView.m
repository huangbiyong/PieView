//
//  PiesView.m
//  PiesView
//
//  Created by chhu02 on 2018/9/28.
//  Copyright © 2018 chase. All rights reserved.
//

#import "PiesView.h"

@implementation PiesView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    NSArray *datas = @[@25, @25, @50];
    CGPoint center = CGPointMake(self.bounds.size.width * 0.5, self.bounds.size.height * 0.5);
    CGFloat radius = self.bounds.size.width * 0.5 - 10;
    CGFloat startA = 0;
    CGFloat angle = 0;
    CGFloat endA = 0;
    
    for (NSNumber *num in datas) {
        startA = endA;
        angle = num.integerValue / 100.0 * M_PI * 2;
        endA = startA + angle;
        
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
        
        [[self randomColor] set];
        
        [path addLineToPoint:center];
        
        [path fill];
    }
 
    
}

//生成一个随机的颜色
- (UIColor *)randomColor {
    
    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    
    return  [UIColor colorWithRed:r green:g blue:b alpha:1];
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //重绘
    [self setNeedsDisplay];
}


@end
