//
//  Extensions.swift
//  Ledger
//
//  Created by Rob Wyant on 6/18/17.
//  Copyright © 2017 Yapper. All rights reserved.
//

import Foundation

extension Double {
    func toString() -> String {
        return "\(self)"
    }
    
    func toStringFromDollars() -> String {
        let formatter = NumberFormatter()
        formatter.currencyCode = "USD"
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: self))!
    }
    
    func toStringFromETH() -> String {
        return "\(self) ETH"
    }
}
