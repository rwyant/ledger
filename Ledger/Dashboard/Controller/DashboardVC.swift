//
//  DashboardVC.swift
//  Ledger
//
//  Created by Rob Wyant on 6/18/17.
//  Copyright © 2017 Yapper. All rights reserved.
//

import UIKit

class DashboardVC: BaseVC {
    
    @IBOutlet weak var walletPriceTextField: UITextField!
    @IBOutlet weak var walletBalanceTextField: UITextField!
    @IBOutlet weak var walletBalanceDollarsTextField: UITextField!
    @IBOutlet weak var walletBuyPriceLabel: UILabel!
    @IBOutlet weak var walletNetLabel: UILabel!
    
    @IBOutlet weak var playPriceTextField: UITextField!
    @IBOutlet weak var playBalanceTextField: UITextField!
    @IBOutlet weak var playBalanceDollarsTextField: UITextField!
    
    var textFields: [UITextField] = []
    var wallet = Wallet()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupVC()
        loadWallet()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavController()
    }
    
    func setupNavController() {
        let leftBarButtonItem = UIBarButtonItem(title: "More", style: .plain, target: self, action: #selector(DashboardVC.leftItem(_:)))
        let rightBarButtonItem = UIBarButtonItem(title: "Ticker", style: .plain, target: self, action: #selector(DashboardVC.rightItem(_:)))
        
        self.navigationItem.setLeftBarButton(leftBarButtonItem, animated: true)
        self.navigationItem.setRightBarButton(rightBarButtonItem, animated: true)
    }
    
    func setupVC() {
        textFields = [walletPriceTextField, walletBalanceTextField, walletBalanceDollarsTextField, playPriceTextField, playBalanceTextField, playBalanceDollarsTextField]
    }
    
    func loadWallet() {
        walletPriceTextField.text = wallet.price.toStringFromDollars()
        walletBalanceTextField.text = wallet.balance.toStringFromETH()
        walletBalanceDollarsTextField.text = wallet.balanceDollars.toStringFromDollars()
        walletBuyPriceLabel.text = wallet.buyPrice.toStringFromDollars()
        walletNetLabel.text = wallet.netTotal.toStringFromDollars()
    }
 
    
    func leftItem(_ sender: UIBarButtonItem) {
        alert("Under Construction", message: "This feature is under constuction. Come back later!")
    }
    
    func rightItem(_ sender: UIBarButtonItem) {
        UIApplication.shared.open(URL(string: "https://itunes.apple.com/us/app/cryptotrader-bitcoin-ethereum-real-time-chart/id1027547409?mt=8")!, options: [:], completionHandler: nil)
//        if let url = URL(string: "cryptotrader://") {
//            if UIApplication.shared.canOpenURL(url) {
//                UIApplication.shared.open(url, options: [:], completionHandler: nil)
//            } else {
//                UIApplication.shared.open(URL(string: "https://itunes.apple.com/us/app/cryptotrader-bitcoin-ethereum-real-time-chart/id1027547409?mt=8")!, options: [:], completionHandler: nil)
//            }
//        }
    }
}

extension DashboardVC: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        deselectField()
    }
}

extension DashboardVC: UITextFieldDelegate {
    func deselectField() {
        for field in textFields {
            field.resignFirstResponder()
        }
    }
}

