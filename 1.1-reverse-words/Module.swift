import Foundation
////
////  Mudule.swift
////  1.1-reverse-words
////
////  Created by Vasili Staratsitarau on 20/05/2022.
////
//
//import UIKit

func reverse(word: String, ignoreSet: CharacterSet) -> String {
    guard word.count > 1 else {
        return word
    }
    var arr = Array(word)
    var start = 0
    var end = arr.count - 1 // or arr.indices.last
    while start < end {
        if !arr[start].isLetter {
            start += 1
        }
        if arr[start].unicodeScalars.allSatisfy(ignoreSet.contains(_:)) {
            start += 1
        } else if arr[end].unicodeScalars.allSatisfy(ignoreSet.contains(_:)) {
            end -= 1
        } else {
            arr.swapAt(start, end)
            start += 1
            end -= 1
        }
    }
    return String(arr)
}

