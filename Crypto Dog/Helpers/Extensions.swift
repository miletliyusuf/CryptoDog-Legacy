//
//  Extensions.swift
//  RandomMessagingApp
//
//  Created by Yusuf Miletli on 7/27/17.
//  Copyright © 2017 Miletli. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    /// UINib and cell's class identifier name should match. Otherwise it won't work.
    ///
    /// - Parameter identifier: Cell and UINib identifier.
    func registerXib(name identifier:String) {
        self.register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
    }
    
}

extension Double {
	
    /// Converts timestamp to required format
    ///
    /// - Returns: Returns string in *hh:mm a MM/dd/YYYY* format as String value
    func timestampToDateString() -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(self))
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm a MM/dd/YYYY"
        dateFormatter.timeZone = TimeZone.current
        let localDate = dateFormatter.string(from: date)
        return localDate
    }
    
    func isIncreasing() -> Bool {
        return self > 0.0
    }
}

extension String {
    
    /// Gets coin's id and return its image url
    ///
    /// - Returns: URL
    func toImageUrl() -> URL {
        return URL(string: "https://files.coinmarketcap.com/static/img/coins/32x32/\(self).png")!
    }
    
    func toPercantageShow() -> String {
        return self + " " + "%"
    }
    
    func usdShow() -> String {
        return "$" + " " + self
    }
    
    var doubleValue:Double {
        return Double(self)!
    }
}
