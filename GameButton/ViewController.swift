//
//  Created by Brandon Jenniges on 11/10/15.
//  Copyright © 2015 Brandon Jenniges. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var correctButton: UIButton!
    @IBOutlet weak var wrongButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

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

