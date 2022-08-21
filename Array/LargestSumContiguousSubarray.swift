//
//  LargestSumContiguousSubarray.swift
//  AmazonGeeksForGeeksPractice
//
//  Created by CHIEN-MING LEE on 2022/8/21.
//

import Foundation

/**
 https://www.geeksforgeeks.org/largest-sum-contiguous-subarray/
 
 Write an efficient program to find the sum of the contiguous subarray within a one-dimensional array of numbers that has the largest sum. 
 */

class LargestSumContiguousSubarray {
    func findLargestSum(_ nums: [Int]) -> Int {
        var maxSoFar: Int = Int.min
        var currentMax: Int = 0
        
        for num in nums {
            currentMax = currentMax + num
            
            if maxSoFar < currentMax {
                maxSoFar = currentMax
            }
            
            if currentMax < 0 {
                currentMax = 0
            }
        }
        
        return maxSoFar
    }
}
