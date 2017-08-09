//
//  CurrencyModel.swift
//  Cyrpto Dog
//
//  Created by Yusuf Miletli on 8/9/17.
//  Copyright © 2017 Miletli. All rights reserved.
//

//{
//    "id": "bitcoin",
//    "name": "Bitcoin",
//    "symbol": "BTC",
//    "rank": "1",
//    "price_usd": "573.137",
//    "price_btc": "1.0",
//    "24h_volume_usd": "72855700.0",
//    "market_cap_usd": "9080883500.0",
//    "available_supply": "15844176.0",
//    "total_supply": "15844176.0",
//    "percent_change_1h": "0.04",
//    "percent_change_24h": "-0.3",
//    "percent_change_7d": "-0.57",
//    "last_updated": "1472762067"
//}

import ObjectMapper

class CurrencyModel: BaseResponse {
    
    var id:String?
    var name:String?
    var symbol:String?
    var rank:String?
    var price_usd:String?
    var price_btc:String?
    var d_volume_usd:String?
    var market_cap_usd:String?
    var available_supply:String?
    var total_supply:String?
    var percent_change_1h:String?
    var percent_change_24h:String?
    var percent_change_7d:String?
    var last_updated:String?
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        symbol <- map["symbol"]
        rank <- map["rank"]
        price_usd <- map["price_usd"]
        price_btc <- map["price_btc"]
        d_volume_usd <- map["24h_volume_usd"]
        market_cap_usd <- map["market_cap_usd"]
        available_supply <- map["available_supply"]
        total_supply <- map["total_supply"]
        percent_change_1h <- map["percent_change_1h"]
        percent_change_24h <- map["percent_change_24h"]
        percent_change_7d <- map["percent_change_7d"]
        last_updated <- map["last_updated"]
    }

}
