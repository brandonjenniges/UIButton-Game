# BLJGameButton
# Overview
**BLJGameButton** is an Objective-C class that allows you to easily implement buttons for displaying correct/incorrect guesses into a trivia type game.

![GameButton](Resources/demo.gif?raw=true)


Installation
------------

There are two ways to use BLJGameButton in your project:
- using CocoaPods
- copying all the files into your project

### Installation with CocoaPods

[CocoaPods](http://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects. See the [Get Started](http://cocoapods.org/#get_started) section for more details.

#### Podfile
```
TODO
```

### Copying files into project
```
BLJGameButton.h
BLJGameButton.m
```  
# Basic usage

## 1. Import
```objc

#import "GameButton.h"
```
## 2. Implement
```objc
GameButton *gameButton = [GameButton new];

[gameButton correct:^{
  //Do something following animation
}];

[gameButton incorrect:^{
  //Do something following animation
}];
```
# License
Distributed under the MIT License.
