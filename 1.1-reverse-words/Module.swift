////
////  Module.swift
////  1.1-reverse-words
////
////  Created by Vasili Staratsitarau on 20/05/2022.
////

import Foundation

func run(textInput: String, textIgnore: String) -> String {
    var ready: String = ""
    let ignore = CharacterSet(charactersIn: textIgnore)
    let reverseWords = textInput.split(separator: " ")
    for i in 0..<reverseWords.count {
        ready.append(reverse(word: String(reverseWords[i]), ignoreSet: ignore) + " ")
    }
    let a = ready.dropLast()
    return String(a)
}

func reverse(word: String, ignoreSet: CharacterSet) -> String {
    
    guard word.count > 1 else {
        return word
    }
    var arr = Array(word)
    var start = 0
    var end = arr.count - 1 
    
    while start < end {
        if !arr[start].isLetter  && ignoreSet.isEmpty {
            start += 1
        } else if !arr[end].isLetter && ignoreSet.isEmpty {
            end -= 1
        } else if arr[start].unicodeScalars.allSatisfy(ignoreSet.contains(_:)) {
            start += 1
        } else if arr[end].unicodeScalars.allSatisfy(ignoreSet.contains(_:)) {
            end -= 1
        } else  {
            arr.swapAt(start, end)
            start += 1
            end -= 1
        }
    }
    return String(arr)
}


