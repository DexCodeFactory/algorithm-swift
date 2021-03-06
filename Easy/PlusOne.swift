//
//  PlusOne.swift
//  
//
//  Created by Dexter Kim on 2019-01-28.
//

/**
Given a non-empty array of digits representing a non-negative integer, plus one to the integer.

The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.

You may assume the integer does not contain any leading zero, except the number 0 itself.

Example 1:

Input: [1,2,3]
Output: [1,2,4]
Explanation: The array represents the integer 123.

Example 2:

Input: [4,3,2,1]
Output: [4,3,2,2]
Explanation: The array represents the integer 4321.
**/

class Solution {

    func plusOne(_ digits: [Int]) -> [Int] {
        var newDigits = digits
        var index = digits.count - 1
        
        repeat {
            if newDigits[index] < 9 {
                newDigits[index] += 1
                return newDigits
            }
            
            newDigits[index] = 0
            index -= 1
        } while index >= 0
        
        newDigits.insert(1, at: 0)
        
        return newDigits
    }
}
