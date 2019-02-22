//
//  Palindrome2.swift
//  
//
//  Created by Dexter Kim on 2019-02-21.
//
/*
Given a non-empty string s, you may delete at most one character. Judge whether you can make it a palindrome.

Example 1:
Input: "aba"
Output: True
Example 2:
Input: "abca"
Output: True
Explanation: You could delete the character 'c'.
Note:
The string will only contain lowercase characters a-z. The maximum length of the string is 50000.
*/

class Solution {
    func validPalindrome(_ s: String) -> Bool {
        return s.isPalindrome
    }
}

extension String {
    
    var isPalindrome: Bool {
        let array = Array(self)
        return isPalindrome(array, 0, array.count-1)
    }
    
    private func isPalindrome(_ array: [Character], _ i: Int, _ j: Int, _ isAlreadyMismatched: Bool = false) -> Bool {
        var left = i, right = j
        while left < right {
            if array[left] != array[right] {
                return isAlreadyMismatched ? false : (isPalindrome(array, left, right-1, true) || isPalindrome(array, left+1, right, true))
            }
            
            left+=1
            right-=1
        }
        
        return true
    }
}
