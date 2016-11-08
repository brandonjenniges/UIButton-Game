//
//  Copyright © 2015 Brandon Jenniges. All rights reserved.
//

import UIKit

var positiveColor = UIColor(red: 0/255.0, green: 200/255.0, blue: 0/255.0, alpha: 1.0)
var negativeColor = UIColor(red: 200/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0)
var positiveAnimationDuration = 1.0
var negativeAnimationDuration = 1.0

public extension UIButton {
    
    public func correct() {
        correct(nil)
    }
    
    public func correct( _ completionClosure:(()->())?) {
        
        let originalColor = self.titleColor(for: UIControlState())
        self.setTitleColor(positiveColor, for: UIControlState())
        
        let animationDuration = positiveAnimationDuration
        let scale:CGFloat = 1.2
        
        let animation = CABasicAnimation(keyPath: "transform")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animation.duration = animationDuration
        animation.repeatCount = 1
        animation.isRemovedOnCompletion = true
        animation.toValue = NSValue(caTransform3D: CATransform3DMakeScale(scale, scale, 1.0))
        self.layer.add(animation, forKey: nil)
        
        let delayTime = DispatchTime.now() + Double(Int64(animationDuration * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: delayTime) {
            if let completionClosure = completionClosure {
                completionClosure()
            }
            self.setTitleColor(originalColor, for: UIControlState())
        }
    }
    
    func incorrect() {
        incorrect(nil)
    }
    
    func incorrect( _ completionClosure:(()->())?) {
        
        let originalColor = self.titleColor(for: UIControlState())
        self.setTitleColor(negativeColor, for: UIControlState())
        
        let animationDuration = negativeAnimationDuration
        let offsetX:CGFloat = 10.0
        
        let animation = CAKeyframeAnimation(keyPath: "transform")
        
        let shiftLeftTransform = NSValue(caTransform3D: CATransform3DMakeTranslation(-offsetX, 0, 0))
        let shiftRightTransform = NSValue(caTransform3D: CATransform3DMakeTranslation(offsetX, 0, 0))
        
        animation.values = [shiftLeftTransform, shiftRightTransform]
        animation.autoreverses = true
        animation.repeatCount = 2.0
        animation.duration = animationDuration / 4.0
        self.layer.add(animation, forKey: nil)
        
        let delayTime = DispatchTime.now() + Double(Int64(animationDuration * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: delayTime) {
            if let completionClosure = completionClosure {
                completionClosure()
            }
            self.setTitleColor(originalColor, for: UIControlState())
        }
    }
}
