//
//  TwoSum.swift
//  
//
//  Created by Dexter Kim on 2019-01-13.
//

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
