//
//  Copyright © 2016 Brandon Jenniges. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var correctButton: UIButton!
    @IBOutlet weak var wrongButton: UIButton!

    @IBAction func correctButtonPress(_ sender: AnyObject) {
        correctButton.correct {
            self.label.text = "Correct"
        }
    }
    
    @IBAction func incorrectButtonPress(_ sender: AnyObject) {
        wrongButton.incorrect { 
            self.label.text = "Wrong"
        }
    }
}

