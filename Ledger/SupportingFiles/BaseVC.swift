//
//  BaseVC.swift
//  Ledger
//
//  Created by Rob Wyant on 6/18/17.
//  Copyright © 2017 Yapper. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {    
    func alert(_ title: String, message: String) {
        let alertView = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { (alert) in
            
        })
        alertView.addAction(action)
        self.present(alertView, animated: true, completion: nil)
    }
}
