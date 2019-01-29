//
//  APIRequestProvider.swift
//  RikkeiSoftBegin
//
//  Created by tund on 1/29/19.
//  Copyright © 2019 tund. All rights reserved.
//

import Foundation

import Alamofire
import SwiftyJSON

class APIRequestProvider: NSObject {
    // MARK: variable
    private var requestURL: String = "https://jsonplaceholder.typicode.com/posts"
    // MARK: SINGLETON
    static var shareInstance: APIRequestProvider = {
        let instance = APIRequestProvider()
        return instance
    }()
    var alamoFireManager: SessionManager
    override init() {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForResource = 120
        configuration.httpAdditionalHeaders = SessionManager.defaultHTTPHeaders
        alamoFireManager = Alamofire.SessionManager(configuration: configuration)
    }
    // MARK: -- Authorization Requests
    func getDataResult() -> DataRequest {
        return alamoFireManager.request(requestURL)
    }
}
