//
//  Print_all_permutations.swift
//  AmazonGeeksForGeeksPractice
//
//  Created by CHIEN-MING LEE on 2022/8/19.
//

import Foundation

/**
 https://www.geeksforgeeks.org/write-a-c-program-to-print-all-permutations-of-a-given-string/
 
 Question: Write a program to print all permutations of a given string
 */

class PrintAllPermutations {
    private var result: [String] = []
    
    func printPermutations(of str: String) -> [String] {
        // clear array content
        result = []
        let chars = Array(str).map{String($0)}
        
        printPermut(of: chars, start: 0)
        
        return result
    }
    
    private func printPermut(of strs_: [String], start: Int) {
        if start >= strs_.count {
            result.append(strs_.joined(separator: ""))
            return
        }
        
        var strs = strs_
        var idx = start
        
        while idx < strs.count {
            strs.swapAt(start, idx)
            printPermut(of: strs, start: start+1)
            strs.swapAt(start, idx)
            
            idx += 1
        }
    
    }
}
