//
//  Palindrome.swift
//  
//
//  Created by Dexter Kim on 2019-02-21.
//
/*
Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

Note: For the purpose of this problem, we define empty string as valid palindrome.

Example 1:

Input: "A man, a plan, a canal: Panama"
Output: true
Example 2:

Input: "race a car"
Output: false
*/
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        // Option1
        let filteredString = s.lowercased().filter({ String($0).rangeOfCharacter(from: .lowercaseLetters) != nil })
        // Option2
        // let filteredString = s.lowercased().filter({ $0.isLetter == true })
        return filteredString == String(filteredString.reversed())
    }
}

extension Character {
    
    fileprivate var isLetter: Bool {
        return (Character("a")...Character("z")).contains(self)
    }
}
