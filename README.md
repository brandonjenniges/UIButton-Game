# UIButton+Game

[![Build Status](https://travis-ci.org/steveholt55/UIButton-Game.svg)](https://travis-ci.org/steveholt55/UIButton-Game)

**UIButton+Game** is a UIButton extension that makes it easy to animate a button with a pulse animation after a correct guess and a shake animation after an incorrect guess. 

Pre-requisites
--------------
- iOS 8 and Swift 3

Installation
------------

#### Copying files into project
```
UIButton+Game.swift
```  

Preview
-----------

![Preview](preview/preview.gif)


Basic usage
-----------

```swift
let gameButton = UIButton()

gameButton.correct {
	//Do something following animation
}

gameButton.incorrect {
	//Do something following animation
}

```

License
---------------
This project is released under the MIT license. See LICENSE for details.
