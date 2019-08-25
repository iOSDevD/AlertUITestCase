//
//  AlertbuttonUITests.swift
//  AlertbuttonUITests
//
//  Created by iOSDev on 8/24/19.
//  Copyright © 2019 iOSDev. All rights reserved.
//

import XCTest
@testable import AlertUITestcase

class AlertbuttonUITests: XCTestCase {

    
    
    override class func setUp(){
        super.setUp()
    }
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    
    
    func testAlert1TapMessage(){
        
        let app = XCUIApplication()
    
        //Find the button with accessibilityIdentifier="button1ID" and tap on it
        app.buttons["button1ID"].tap()

        //Expect a Alert to be shown, get it as per the Title
        let alert = app.alerts["Alert 1"]
        
        //Alert Message should match the static Message Being set.
        XCTAssertTrue(alert.staticTexts[AlertUIMessageConstants.alert1Message].exists, "Alert 1 Message mismtach - wrong message is shown")
        
        //After the test execution is completed, close the alert.
        self.addTeardownBlock {
            alert.buttons["OK"].tap()
        }
        
    }
    
    func testAlert2TapMessage() {
        let app = XCUIApplication()
        
        //Find the button with accessibilityIdentifier="button2ID" and tap on it
        app.buttons["button2ID"].tap()
        
        //Expect a Alert to be shown, get it as per the Title
        let alert = app.alerts["Alert 2"]
        
        //Alert Message should match the static Message Being set.
        XCTAssertTrue(alert.staticTexts[AlertUIMessageConstants.alert2Message].exists, "Alert 2 Message mismtach - wrong message is shown")
        
        //After the test execution is completed, close the alert.
        self.addTeardownBlock {
            alert.buttons["OK"].tap()
        }
    }

}
