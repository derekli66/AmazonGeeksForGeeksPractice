//
//  ValidateIPAddressTests.swift
//  AmazonGeeksForGeeksPracticeTests
//
//  Created by CHIEN-MING LEE on 2022/8/21.
//

import XCTest

class ValidateIPAddressTests: XCTestCase {
    
    private var case1: String = "128.0.0.1"
    private var case2: String = "125.16.100.1"
    private var case3: String = "125.512.100.1"
    private var case4: String = "125.512.100.abc"
    
    private var ip1 = "222.111.111.111"
    private var ip2 = "5555..555"
    private var ip3 = "0000.0000.0000.0000"
    private var ip4 = "1.1.1.1"

    func testCase1() throws {
        let validator = ValidateIPAddress()
        let valid = validator.validate(case1)
        XCTAssert(valid == true)
    }
    
    func testCase2() throws {
        let validator = ValidateIPAddress()
        let valid = validator.validate(case2)
        XCTAssert(valid == true)
    }
    
    func testCase3() throws {
        let validator = ValidateIPAddress()
        let valid = validator.validate(case3)
        XCTAssert(valid == false)
    }
    
    func testCase4() throws {
        let validator = ValidateIPAddress()
        let valid = validator.validate(case4)
        XCTAssert(valid == false)
    }
    
    func testIP1() {
        let validator = ValidateIPAddress()
        let valid = validator.validate(ip1)
        XCTAssert(valid == true)
    }
    
    func testIP2() {
        let validator = ValidateIPAddress()
        let valid = validator.validate(ip2)
        XCTAssert(valid == false)
    }
    
    func testIP3() {
        let validator = ValidateIPAddress()
        let valid = validator.validate(ip3)
        XCTAssert(valid == false)
    }
    
    func testIP4() {
        let validator = ValidateIPAddress()
        let valid = validator.validate(ip4)
        XCTAssert(valid == true)
    }

}
