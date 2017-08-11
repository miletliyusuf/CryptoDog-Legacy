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
        currencies <- map[""]
    }
    
    override class func newInstance(_ jsonString: String)-> AnyObject? {
        return Mapper<TickerResponse>().map(JSONString: jsonString)
    }

}
