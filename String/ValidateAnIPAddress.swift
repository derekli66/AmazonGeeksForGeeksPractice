//
//  ValidateAnIPAddress.swift
//  AmazonGeeksForGeeksPractice
//
//  Created by CHIEN-MING LEE on 2022/8/20.
//

import Foundation

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
