//
//  LargestSumContiguousSubarrayTests.swift
//  AmazonGeeksForGeeksPracticeTests
//
//  Created by CHIEN-MING LEE on 2022/8/21.
//

import XCTest

class LargestSumContiguousSubarrayTests: XCTestCase {

    private var nums1: [Int] = [-2, -3, 4, -1, -2, 1, 5, -3]

    func testExample() throws {
        let solution = LargestSumContiguousSubarray()
        let result = solution.findLargestSum(nums1)
        XCTAssert(result == 7)
    }

    

}
