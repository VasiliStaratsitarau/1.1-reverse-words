//
//  Mudule.swift
//  1.1-reverse-words
//
//  Created by Vasili Staratsitarau on 20/05/2022.
//

import Foundation

func reverseWordsModule(text: String) -> String {
        let reverseWords = text.split(separator: " ").map { String($0.reversed())}.joined(separator: " ")
        return reverseWords
}
//var buttonCounter = 0
//@IBAction func reverseButton(_ sender: ChildButton) {
//    buttonCounter += 1
//    switch buttonCounter {
//    case 1:
//        if let text = inputText.text {
//            reverseTextView.text = reverseWordsModule(text: text)
//            reverseButton.setTitle("Clear", for: .normal)
//        }
//    case 2:
//        if reverseTextView.text != "" {
//            inputText.text = ""
//            reverseTextView.text = ""
//            reverseButton.buttonDisable()
//            reverseButton.setTitle("REVERSE IT!", for: .normal)
//            buttonCounter = 0
//        }
//    default: break
//    }
//}
