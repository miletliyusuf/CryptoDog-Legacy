//
//  TickerResponse.swift
//  RandomMessagingApp
//
//  Created by Yusuf Miletli on 26/07/2017.
//  Copyright © 2017 Miletli. All rights reserved.
//

import ObjectMapper

class TickerResponse: BaseResponse {
    
    var currencies:[CurrencyModel]?
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        currencies <- map["currencies"]
    }
    
    override class func newInstance(_ jsonString: String) -> AnyObject? {
        
        let str = "{\"currencies\":\(jsonString)}"
        let obj = Mapper<TickerResponse>().map(JSONString: str)
        return obj
    }
}
