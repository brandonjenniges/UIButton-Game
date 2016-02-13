//
//  Copyright © 2016 Brandon Jenniges. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var correctButton: UIButton!
    @IBOutlet weak var wrongButton: UIButton!

    @IBAction func correctButtonPress(sender: AnyObject) {
        correctButton.correct { () -> () in
            self.label.text = "Correct"
        }
    }
    
    @IBAction func incorrectButtonPress(sender: AnyObject) {
        wrongButton.incorrect { () -> () in
            self.label.text = "Wrong"
        }
    }
}

