//
//  PlusOne.swift
//  
//
//  Created by Dexter Kim on 2019-01-28.
//

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
