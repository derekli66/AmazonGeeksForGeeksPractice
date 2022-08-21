//
//  PrintAllPermutationsTests.swift
//  AmazonGeeksForGeeksPracticeTests
//
//  Created by CHIEN-MING LEE on 2022/8/19.
//

import XCTest

class PrintAllPermutationsTests: XCTestCase {
    
    private var case1: String = "ABC"
    private var case2: String = "ABCD"
    private var case3: String = "ABCDE"
    private var case4: String = "123"
    private var case5: String = "abc"
    private var case6: String = "abcdef"
    
    private let permutationPrinter = PrintAllPermutations()
    
    private func totalOfPermutations(_ str: String) -> Int {
        var count = str.count
        var target: Int = 1
        while count > 0 {
            target = target * count
            count -= 1
        }
        
        return target
    }

    func testPrintCase1() throws {
        let results = permutationPrinter.printPermutations(of: case1)
        
        let target = totalOfPermutations(case1)
        
        XCTAssert(results.count == target);
    }
    
    func testPrintCase2() throws {
        let results = permutationPrinter.printPermutations(of: case2)
        
        let target = totalOfPermutations(case2)
        
        XCTAssert(results.count == target);
    }
    
    func testPrintCase3() throws {
        let results = permutationPrinter.printPermutations(of: case3)
        
        let target = totalOfPermutations(case3)
        
        XCTAssert(results.count == target);
    }

    func testPrintCase4() {
        let results = permutationPrinter.printPermutations(of: case4)
        
        let target = totalOfPermutations(case4)
        
        XCTAssert(results.count == target);
    }
    
    func testPrintCase5() {
        let results = permutationPrinter.printPermutations(of: case5)
        
        let target = totalOfPermutations(case5)
        
        XCTAssert(results.count == target);
    }
    
    func testPrintCase6() {
        let results = permutationPrinter.printPermutations(of: case6)
        
        let target = totalOfPermutations(case6)
        
        XCTAssert(results.count == target);
    }
}
