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
    }
    
    override func tearDownWithError() throws {
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
    
    func test_reverseWords_multipleWordsStringWithSpaceinIgnoreText() {
        let input = "12345 asdf"
        let output = "54321 fdsa"
        let ignoreText = " "
        XCTAssertEqual(output, __1_reverse_words.run(textInput: input, textIgnore: ignoreText))
    }
    
    func test_reverseWords_multipleWordsStringWithEmptyIgnoreText() {
        let input = "12345 asdf"
        let output = "12345 fdsa"
        let ignoreText = ""
        XCTAssertEqual(output, __1_reverse_words.run(textInput: input, textIgnore: ignoreText))
    }
    
    func testPerformanceExample() throws {
        self.measure {
        }
    }
}
