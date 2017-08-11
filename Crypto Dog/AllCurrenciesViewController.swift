//
//  AllCurrenciesViewController.swift
//  Cyrpto Dog
//
//  Created by Yusuf Miletli on 8/9/17.
//  Copyright © 2017 Miletli. All rights reserved.
//

import UIKit

class AllCurrenciesViewController: BaseViewController {
    
    @IBOutlet weak var tableView:UITableView?
    @IBOutlet weak var buttonRefresh:UIBarButtonItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.allCurrencies()
    }
    
    //MARK: - Requests
    
    func allCurrencies() {
        let r = TickerRequest()
        r.limit = 10
        _ = TickerDataService.list(requestModel: r).subscribe(onNext: { (response) in
            if let res:TickerResponse = response as! TickerResponse? {
                print(response)
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
        
    }
    
}

extension AllCurrenciesViewController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "")
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected Cell row = \(indexPath.row)")
    }
    
}
