//
//  TwoSum.swift
//  
//
//  Created by Dexter Kim on 2019-01-28.
//

/*
Given a 2d grid map of '1's (land) and '0's (water), count the number of islands. An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

Example 1:

Input:
11110
11010
11000
00000

Output: 1
Example 2:

Input:
11000
11000
00100
00011

Output: 3
*/

class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        var numOfIslands: Int = 0
        for row in 0..<grid.count {
            for column in 0..<grid[row].count {
                if grid[row][column] == "1" {
                    numOfIslands += 1
                    destroyLand(&grid, row: row, column: column)
                }
            }
        }
        
        return numOfIslands
    }
    
    private func destroyLand(_ grid: inout [[Character]], row: Int, column: Int) {
        grid[row][column] = "0"
        
        // Check on the right side
        if column < grid[row].count - 1 && grid[row][column + 1] == "1" {
            destroyLand(&grid, row: row, column: column + 1)
        }
        
        // Check on the left side
        if column > 0 && grid[row][column - 1] == "1" {
            destroyLand(&grid, row: row, column: column - 1)
        }
        
        // Check on the up side
        if row < grid.count - 1 && grid[row + 1][column] == "1" {
            destroyLand(&grid, row: row + 1, column: column)
        }
        
        // Check on the down side
        if row > 0 && grid[row - 1][column] == "1" {
            destroyLand(&grid, row: row - 1, column: column)
        }
    }
}
