//
//  GameButton.m
//  NFL College Trivia
//
//  Created by Brandon Jenniges on 10/5/14.
//  Copyright (c) 2014 Brandon Jenniges. All rights reserved.
//

#import "GameButton.h"

@interface GameButton ()
@property (nonatomic, strong) void (^completionHandler)(NSString *, NSInteger);
@end

@implementation GameButton

- (void)correct {
	[self correct:nil];
}

- (void)correct:(void (^)())onCompletion {
	[self setTitleColor:[GameButton correctColor] forState:UIControlStateNormal];

	float animationDuration = 1.0;

	CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"transform"];
	anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	anim.duration = animationDuration;
	anim.repeatCount = 1;
	anim.removedOnCompletion = YES;
	anim.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.2, 1.2, 1.0)];
	[self.layer addAnimation:anim forKey:nil];

	int64_t delayInSeconds = animationDuration;
	dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
	dispatch_after(popTime, dispatch_get_main_queue(), ^(void) {
		if (onCompletion) {
		    onCompletion();
		}
		[self setTitleColor:[GameButton defaultColor] forState:UIControlStateNormal];
	});
}

- (void)incorrect {
	[self incorrect:nil];
}

- (void)incorrect:(void (^)())onCompletion {
	[self setTitleColor:[GameButton incorrectColor] forState:UIControlStateNormal];

	float animationDuration = 1.0;
	CAKeyframeAnimation *anim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
	anim.values = @[[NSValue valueWithCATransform3D:CATransform3DMakeTranslation(-10.0f, 0.0f, 0.0f)], [NSValue valueWithCATransform3D:CATransform3DMakeTranslation(10.0f, 0.0f, 0.0f)]];
	anim.autoreverses = YES;
	anim.repeatCount = 2.0f;
	anim.duration = animationDuration / 4.f;

	[self.layer addAnimation:anim forKey:nil];

	int64_t delayInSeconds = animationDuration;
	dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
	dispatch_after(popTime, dispatch_get_main_queue(), ^(void) {
		if (onCompletion) {
		    onCompletion();
		}
		[self setTitleColor:[GameButton defaultColor] forState:UIControlStateNormal];
	});
}

+ (UIColor *)defaultColor {
	return [UIColor colorWithRed:33 / 255.0f green:33 / 255.0f blue:33 / 255.0f alpha:1.0f];
}

+ (UIColor *)correctColor {
	return [UIColor colorWithRed:0 / 255.0f green:200 / 255.0f blue:0 / 255.0f alpha:1.0f];
}

+ (UIColor *)incorrectColor {
	return [UIColor colorWithRed:200 / 255.0f green:0 / 255.0f blue:0 / 255.0f alpha:1.0f];
}

@end
