//
//  ViewController.m
//  GameButton
//
//  Created by Brandon Jenniges on 5/10/15.
//  Copyright (c) 2015 Brandon Jenniges. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet GameButton *correctButton;
@property (weak, nonatomic) IBOutlet GameButton *wrongButton;

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

- (IBAction)correctGuess:(GameButton *)sender {
	[sender correct: ^{
	    NSLog(@"Correct guess!");
	}];
}

- (IBAction)incorrectGuess:(GameButton *)sender {
	[sender incorrect: ^{
	    NSLog(@"Incorrect guess!");
	}];
}

@end
