//
//  RadioButtonTests.swift
//  RadioButtonTests
//
//  Created by Joe Amanse on 20/11/2015.
//  Copyright © 2015 Joe Christopher Paul Amanse. All rights reserved.
//

import XCTest
@testable import RadioButton

class RadioButtonTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRadioButtonFillColor() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let radioButton = RadioButton(frame: CGRect.zero)
        
        var currentFillColor = UIColor(CGColor: radioButton.fillCircleLayer.fillColor!)
        XCTAssert(currentFillColor == UIColor.clearColor(), "Fill color should be clear")
        
        radioButton.selected = true
        
        currentFillColor = UIColor(CGColor: radioButton.fillCircleLayer.fillColor!)
        XCTAssert(currentFillColor == radioButton.fillCircleColor, "Current fill color should be equal to fillCircleColor")
    }
    
    func testRadioButtonCircleRadius() {
        let width: CGFloat = 100
        let tallRadioButton = RadioButton(frame: CGRect(x: 0, y: 0, width: width, height: 300))
        XCTAssert(tallRadioButton.circleRadius == (width - tallRadioButton.circleLineWidth) / 2, "Circle should behave like Aspect Fit")
        
        let height: CGFloat = 100
        let longRadioButton = RadioButton(frame: CGRect(x: 0, y: 0, width: 300, height: height))
        XCTAssert(longRadioButton.circleRadius == (width - tallRadioButton.circleLineWidth) / 2, "Circle should behave like Aspect Fit")
    }
    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
}
