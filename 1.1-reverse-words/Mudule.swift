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

