//
//  NewUserSignUp.swift
//  GayaniMadahapola-cobsccomp182p-002UITests
//
//  Created by Gayani Madubhashini on 3/2/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import XCTest

class NewUserSignUp: XCTestCase {

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

    func testExample() {
        
        let app = XCUIApplication()
        let signUpButton = app.buttons["Sign Up"]
        signUpButton.tap()
        app.textFields["First name"].tap()
        app.textFields["Last name"].tap()
                app.textFields["Email address"].tap()
        
        let passwordSecureTextField = app.secureTextFields[" Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.tap()
        signUpButton.tap()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
