//
//  __1_reverse_wordsUITests.swift
//  1.1-reverse-wordsUITests
//
//  Created by Vasili Staratsitarau on 12/05/2022.
//

import XCTest

class __1_reverse_wordsUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        let app = XCUIApplication()
        app.launch()

        app.textFields["Input"].tap()
        app.textFields["Input"].typeText("Test string")
        app.keyboards.buttons["Return"].tap()
        app.buttons["Reverse"].tap()
        XCTAssertEqual("tseT gnirts", app.staticTexts["Output"].label)
        app/*@START_MENU_TOKEN@*/.buttons["Custom"]/*[[".segmentedControls[\"Selector\"].buttons[\"Custom\"]",".buttons[\"Custom\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.textFields["CustomText"]/*[[".textFields[\"Text to ignore\"]",".textFields[\"CustomText\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.textFields["CustomText"].typeText("Test string")
        app.keyboards.buttons["Return"].tap()
        app.buttons["Reverse"].tap()
        XCTAssertEqual("Test string", app.staticTexts["Output"].label)
}

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
