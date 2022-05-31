////
////  Mudule.swift
////  1.1-reverse-words
////
////  Created by Vasili Staratsitarau on 20/05/2022.
////
//
//import UIKit

func reverseWordsModule(text: String) -> String {
    
    let separateArray = text.split(separator: " ")
    var l = 0
    var tempArray = ""
    var reversedArray = [String]()
//------------- This loop cleaninig words in array from nonAlphabet values and reverse them -----
    for i in 0..<separateArray.count {
            if !text.isLetters {
            tempArray = separateArray[i].replacingOccurrences(of: "[^a-zA-Z]+", with: "", options: .regularExpression)
            tempArray = String(tempArray.split(separator: " ").map { String($0.reversed())}.joined(separator: " "))
        } else {
            tempArray = String(separateArray[i].reversed())
        }
        reversedArray.append(tempArray)
    }
    let new = Array(reversedArray.joined(separator: " "))
    var old = Array(separateArray.joined(separator: " "))
//------------- loop for change reverse letters in initial words ignore nonAlphabet values ---
    if !reversedArray.isEmpty {
        for i in 0..<old.count {
            var d = i
            if old[d] == " " {
                d += 1
            }
            if old[d].isLetter  {
                old[i] = new[l]
                l += 1
            }
        }
    }
    return String(old)
}


