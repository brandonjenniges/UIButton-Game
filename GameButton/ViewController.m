//
//  ViewController.m
//  GameButton
//
//  Created by Brandon Jenniges on 5/10/15.
//  Copyright (c) 2015 Brandon Jenniges. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet BLJGameButton *correctButton;
@property (weak, nonatomic) IBOutlet BLJGameButton *wrongButton;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)correctGuess:(BLJGameButton *)sender {
	[sender correct: ^{
	    NSLog(@"Correct guess!");
	}];
}

- (IBAction)incorrectGuess:(BLJGameButton *)sender {
	[sender incorrect: ^{
	    NSLog(@"Incorrect guess!");
	}];
}

@end
