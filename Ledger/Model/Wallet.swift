//
//  Wallet.swift
//  Ledger
//
//  Created by Rob Wyant on 6/18/17.
//  Copyright © 2017 Yapper. All rights reserved.
//

import Foundation

class Wallet: NSObject {
    var price = 0.0
    var balance = 0.0
    var balanceDollars = 0.0
    var buyPrice = 0.0
    var netTotal = 0.0
    
    override init() {
        super.init()
        
        self.price = 348.93
        self.balance = 9.2132
        self.balanceDollars = price * balance
        self.buyPrice = 255.34
        self.netTotal = balanceDollars - (buyPrice * balance)
    }
    
    convenience init(_ price: Double, balance: Double, balanceDollars: Double) {
        self.init()
        
        self.price = price
        self.balance = balance
        self.balanceDollars = balanceDollars
    }
    
    
}
