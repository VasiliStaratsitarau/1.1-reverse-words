//
//  Mudule.swift
//  1.1-reverse-words
//
//  Created by Vasili Staratsitarau on 20/05/2022.
//

import UIKit

func reverseWordsModule(text: String) -> String {
    let test1 = text.split(separator: " ")
    print(test1)
    var l = 0
    var tempArray = ""
    
    if text.isLetters != true {
        tempArray = text.replacingOccurrences(of: "[^a-zA-Z]+", with: "", options: .regularExpression)
        tempArray = String(tempArray.reversed())
    }
    
    var mydataChar = Array(text)
    let tempArrayForCopy = Array(tempArray)
    
    for i in 0..<text.count {
        if mydataChar[i].isLetter {
            mydataChar[i] = tempArrayForCopy[l]
            l+=1
        }
    }
    return String(mydataChar)
}

extension String {
    var isLetters: Bool {
        return !isEmpty && range(of: "[^a-zA-Z]", options: .regularExpression) == nil
    }
}
//let reverseWords = text.split(separator: " ").map { String($0.reversed())}.joined(separator: " ")
