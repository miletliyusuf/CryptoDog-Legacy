//
//  AllCurrenciesViewController.swift
//  Cyrpto Dog
//
//  Created by Yusuf Miletli on 8/9/17.
//  Copyright © 2017 Miletli. All rights reserved.
//

import UIKit
import Kingfisher

class AllCurrenciesViewController: BaseViewController {
    
    fileprivate let coinCellIdentifier = "CoinTableViewCell"
    
    @IBOutlet weak var tableView:UITableView?
    @IBOutlet weak var buttonRefresh:UIBarButtonItem?
    
    var currencies:[CurrencyModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.allCurrencies()
        self.initTableView()
    }
    
    //MARK: - Requests
    
    func allCurrencies() {
        let r = TickerRequest()
//        r.limit = 10
        _ = TickerDataService.list(requestModel: r).subscribe(onNext: { (response) in
            
            if let res = response as? TickerResponse! {
                print(res)
                self.currencies = res.currencies!
                self.tableView?.reloadData()
            }
            
        }, onError: { (error) in
            print(error)
        }, onCompleted: {
            
        }, onDisposed: {
            
        })
    }
    
    //MARK: - Custom Methods
    func initTableView() {
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.tableView?.registerXib(name:coinCellIdentifier)
    }
    
}

extension AllCurrenciesViewController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.currencies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: coinCellIdentifier, for: indexPath) as! CoinTableViewCell
        let instantCoin = self.currencies[indexPath.row]
        cell.labelSymbol?.text = instantCoin.symbol!
        cell.labelValue?.text = instantCoin.price_usd!.usdShow()
        cell.imageViewCoin?.kf.setImage(with: instantCoin.id?.toImageUrl())
        cell.viewPercantage?.isIncreasing = instantCoin.percent_change_24h!.doubleValue.isIncreasing()
        cell.viewPercantage?.percantage = instantCoin.percent_change_24h!
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected Cell row = \(indexPath.row)")
    }
    
}
