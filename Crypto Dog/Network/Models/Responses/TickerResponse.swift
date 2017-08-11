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
        currencies <- map["currencies"]
    }
    
    override class func newArrayInstance(_ jsonString: String)-> [Any] {
        let obj = Mapper<BaseResponse>().mapArray(JSONString: jsonString)
        return obj!
    }

}
