//
//  UI_TestingUITests.swift
//  UI TestingUITests
//
//  Created by Vidyashri on 12/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import XCTest

class UI_TestingUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
    }
    
    func testIncrementCounter() {
        let app = XCUIApplication()
        app.launch()
        
        let incrementButton = app.buttons["incrementButton"]
        incrementButton.tap()
        
        let counterLabel = app.staticTexts["incrementLabel"]
        XCTAssertEqual("1", counterLabel.label)
    }

}
