//
//  Copyright © 2016 Brandon Jenniges. All rights reserved.
//

import XCTest
@testable import GameButton

class GameButtonTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCorrectButton() {
        let readyExpectation = expectation(description: "ready")
        var string = ""
        let button = UIButton()
        button.correct { () -> () in
            string = "Correct"
            readyExpectation.fulfill()
        }
        waitForExpectations(timeout: 3.0) { (error: NSError?) -> Void in
            XCTAssertTrue(string == "Correct", "Expected 'Correct' but value was \(string)")
        }
    }
    
    func testIncorrectButton() {
        let readyExpectation = expectation(description: "ready")
        var string = ""
        let button = UIButton()
        button.incorrect { () -> () in
            string = "Wrong"
            readyExpectation.fulfill()
        }
        waitForExpectations(timeout: 3.0) { (error: NSError?) -> Void in
            XCTAssertTrue(string == "Wrong", "Expected 'Wrong' but value was \(string)")
        }
    }
    
    func testNonClosure() {
        let button = UIButton()
        button.correct()
        sleep(2)
        button.incorrect()
    }
    
}
