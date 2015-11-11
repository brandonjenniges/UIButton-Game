# BLJGameButton
# Overview
**BLJGameButton** is an Objective-C class that allows you to easily implement buttons for displaying correct/incorrect guesses into a trivia type game.

Installation
------------

There are two ways to use BLJGameButton in your project:
- using CocoaPods
- copying all the files into your project

### Installation with CocoaPods

[CocoaPods](http://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects. See the [Get Started](http://cocoapods.org/#get_started) section for more details.

### Podfile
```
pod 'BLJGameButton'

```

### Copying files into project
```
UIButton+Game.swift

```  
# Basic usage

## 1. Import
```swift

#import "BLJGameButton.h"
```
## 2. Implement
```swift
UIButton *gameButton = [UIButton new];

gameButton.correct { () -> () in
	//Do something following animation
}

gameButton.incorrect { () -> () in
	//Do something following animation
}

```
License
-----------
Distributed under the MIT License.
