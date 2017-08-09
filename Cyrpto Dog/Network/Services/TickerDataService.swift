//
//  MessagesDataService.swift
//  RandomMessagingApp
//
//  Created by Yusuf Miletli on 7/26/17.
//  Copyright © 2017 Miletli. All rights reserved.
//

import RxSwift

class TickerDataService {
    
    class func list(requestModel:TickerRequest) -> Observable<AnyObject?> {
        return requestModel.startRequest()
    }
    
}
