//
//  ValidateAnIPAddress.swift
//  AmazonGeeksForGeeksPractice
//
//  Created by CHIEN-MING LEE on 2022/8/20.
//

import Foundation

/**
 https://www.geeksforgeeks.org/program-to-validate-an-ip-address/
 
 Write a program to Validate an IPv4 Address.
 According to Wikipedia, IPv4 addresses are canonically represented in dot-decimal notation, which consists of four decimal numbers, each ranging from 0 to 255, separated by dots, e.g., 172.16.254.1
 */

class ValidateIPAddress {
    func validate(_ address: String) -> Bool {
        let nums = address.components(separatedBy:".")
        if nums.count != 4 { return false }
        
        for str in nums {
            let num = Int(str)
            if str.count > 3 { return false }
            if num == nil { return false }
            if num! < 0 || num! > 255 { return false }
        }
        
        return true
    }
}
