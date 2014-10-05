GameButton-ObjC
===============
**GameButton** is an Objective-C class that allows you to easily implement buttons for displaying correct/incorrect guesses into a trivia type game.

INSTALLATION
-----
**GameButton** uses facebook\pop for animations.  After adding facebook\pop to your project all you have to do is add GameButton header and implementation files to your project.
```objc

pod 'pop', '~> 1.0'
```

USAGE
-----
```objc

#import "GameButton.h"
#import <POP/POP.h>
```
DISPLAY
-----
```objc
GameButton *gameButton = [GameButton new];

[gameButton correct:^{
  //Do something following animation
}];

[gameButton incorrect:^{
  //Do something following animation
}];


```

DEMO
-----
![GameButton](demo.gif?raw=true)

LICENSE
-------------------

Distributed under the MIT License.
