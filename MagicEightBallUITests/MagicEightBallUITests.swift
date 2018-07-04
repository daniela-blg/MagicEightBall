//
//  MagicEightBallUITests.swift
//  MagicEightBallUITests
//
//  Created by Daniela Bulgaru on 04/07/2018.
//  Copyright © 2018 Daniela Bulgaru. All rights reserved.
//

import XCTest

class MagicEightBallUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    func testTextFieldChangesLabelText() {
        let app = XCUIApplication()
        
        let myString = "My first iOS UI test"
        
        let textField = app.textFields["myTextField"]
        XCTAssertTrue(textField.exists)
        
        let myLabel = app.staticTexts["myLabel"]
        XCTAssertTrue(myLabel.exists)
        
        textField.tap()
        textField.typeText(myString)
        
        app.buttons["myButton"].tap()
        
        XCTAssertEqual(myLabel.label, myString)
    }
    
}
