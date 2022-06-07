//
//  __1_reverse_wordsTests.swift
//  1.1-reverse-wordsTests
//
//  Created by Vasili Staratsitarau on 12/05/2022.
//

import XCTest
@testable import __1_reverse_words

class __1_reverse_wordsTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        
        
    }
    func test_reverseWords_singleWordString() {
        let input = "Test"
        let output = "tseT"
        XCTAssertEqual(output, __1_reverse_words.run(textInput: input, textIgnore: ""))
    }
    
    func test_reverseWords_multipleWordsString() {
        let input = "Test string"
        let output = "tseT gnirts"
        XCTAssertEqual(output, __1_reverse_words.run(textInput: input, textIgnore: ""))
    }
    func test_reverseWords_multipleWordsStringWithIgnoreText() {
        let input = "Test string"
        let output = "tseT grtins"
        let ignoreText = "ni"
        XCTAssertEqual(output, __1_reverse_words.run(textInput: input, textIgnore: ignoreText))
    }
    
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
