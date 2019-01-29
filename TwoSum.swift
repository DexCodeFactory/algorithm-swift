//
//  TwoSum.swift
//  
//
//  Created by Dexter Kim on 2019-01-13.
//

/*
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:

Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
*/

import Foundation

class Solution {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // Create a hash map
        var map = [Int: Int]()
        
        // Loop the map
        for (index, number) in nums.enumerated() {
            // Check if current element's complement already exists in the table.
            if let complementIndex = map[target - number] {
                // Found the indexes
                return [index, complementIndex]
            }
            
            // put a index for the value
            map[number] = index
        }
        
        // Not found
        return []
    }
}
