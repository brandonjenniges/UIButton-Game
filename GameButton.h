//
//  GameButton.h
//  NFL College Trivia
//
//  Created by Brandon Jenniges on 10/5/14.
//  Copyright (c) 2014 Brandon Jenniges. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <POP/POP.h>


@interface GameButton : UIButton

-(void)correct;

-(void)correct : (void(^)())handler;

-(void)incorrect;

-(void)incorrect : (void(^)())handler;

@end
