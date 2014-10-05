//
//  GameButton.m
//  NFL College Trivia
//
//  Created by Brandon Jenniges on 10/5/14.
//  Copyright (c) 2014 Brandon Jenniges. All rights reserved.
//

#import "GameButton.h"

@interface GameButton()
@property (nonatomic, strong) void(^completionHandler)(NSString *, NSInteger);
@end

@implementation GameButton

-(void)correct {
    [self correct:nil];
}

-(void)correct:(void (^)())handler{
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewScaleX];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.fromValue = @(1.25);
    anim.toValue = @(1.00);
    anim.duration = 1.0;
    [self setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [anim setCompletionBlock:^(POPAnimation *animation, BOOL finished) {
        [self setTitleColor:[GameButton defaultColor] forState:UIControlStateNormal];
        if (handler) {
            handler();
        }
    }];
    [self pop_addAnimation:anim forKey:@"fade"];
    
    
    
}

-(void)incorrect {
    [self incorrect:nil];
}

-(void)incorrect :(void (^)()) handler {
    POPSpringAnimation *positionAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    positionAnimation.velocity = @2000;
    positionAnimation.springBounciness = 20;
    [self setTitleColor:[GameButton incorrectColor] forState:UIControlStateNormal];
    [positionAnimation
     setCompletionBlock:^(POPAnimation *animation, BOOL finished) {
         [self setTitleColor:[GameButton defaultColor] forState:UIControlStateNormal];
         if (handler) {
             handler();
         }
     }];
    [self.layer pop_addAnimation:positionAnimation forKey:@"positionAnimation"];
    
}

+(UIColor*)defaultColor {
    return [UIColor colorWithRed:151 / 255.0f green:49 / 255.0f blue:15 / 255.0f alpha:1.0f];
}

+(UIColor*)correctColor {
    return [UIColor greenColor];
}

+(UIColor*)incorrectColor {
    return [UIColor redColor];
}

@end
