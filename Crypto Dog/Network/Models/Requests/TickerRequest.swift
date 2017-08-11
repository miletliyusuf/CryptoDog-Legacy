//
//  TickerRequest.swift
//  Cyrpto Dog
//
//  Created by Yusuf Miletli on 8/9/17.
//  Copyright © 2017 Miletli. All rights reserved.
//

import ObjectMapper
import Alamofire

class TickerRequest: BaseRequest {
    
//    (int) limit - only returns the top limit results.
    var limit:Int?
//    (string) convert - return price, 24h volume, and market cap in terms of another currency. Valid values are:
//    "AUD", "BRL", "CAD", "CHF", "CNY", "EUR", "GBP", "HKD", "IDR", "INR", "JPY", "KRW", "MXN", "RUB"
    var convert:String?
    
    override func isResponseCustomArray() -> Bool { return true }
    
    override func reqEndPointAndType() -> (String, HTTPMethod) {
        
        if (limit != nil) && (convert != nil) { return ("ticker/?limit=\(limit!)&convert=\(convert!)",.get) }
        else if (limit != nil) { return ("ticker/?limit=\(limit!)",.get) }
        else if (convert != nil) { return ("ticker/?convert=\(convert!)",.get) }
        else { return ("ticker",.get) }
    }
    
    override func mapping(map: Map) {
        super.mapping(map: map)
    }
    
    override func responseModel() -> BaseResponse.Type {
        return TickerResponse.self
    }
    
    
}
