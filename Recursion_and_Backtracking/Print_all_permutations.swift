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
 A permutation also called an “arrangement number” or “order,” is a rearrangement of the elements of an ordered list S into a one-to-one correspondence with S itself. A string of length n has n! permutation.

 Source: Mathworld(http://mathworld.wolfram.com/Permutation.html)
 
 Below are the permutations of string ABC.
 ABC ACB BAC BCA CBA CAB
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
