//
//  RadioButton_exampleUITests.swift
//  RadioButton-exampleUITests
//
//  Created by Joe Amanse on 20/11/2015.
//  Copyright © 2015 Joe Christopher Paul Amanse. All rights reserved.
//

import XCTest

class RadioButton_exampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRadioButtonSelection() {
        XCUIDevice.sharedDevice().orientation = .FaceUp
        
        let button = XCUIApplication().childrenMatchingType(.Window).elementBoundByIndex(0).childrenMatchingType(.Other).element.childrenMatchingType(.Button).element
        
        let selected = button.selected
        
        button.tap()
        XCTAssert(button.selected == !selected)
        
        button.tap()
        XCTAssert(button.selected == selected)
    }
}
