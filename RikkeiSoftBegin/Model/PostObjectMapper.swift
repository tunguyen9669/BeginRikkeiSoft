 //
//  PostObjectMapper.swift
//  RikkeiSoftBegin
//
//  Created by tund on 1/29/19.
//  Copyright © 2019 tund. All rights reserved.
//

import Foundation
import ObjectMapper
 
class PostMap: Mappable {
    var userID: Int?
    var id: Int?
    var title: String?
    var body: String?
    
    public func getUserId() -> Int {
        return userID ?? 0
    }
    public func getId() -> Int {
        return id ?? 0
    }
    public func getBody() -> String {
        return body ?? ""
    }
    public func getTitle() -> String {
        return title ?? ""
    }
    
    required init?(map: Map) {
//        self.id = 0
//        self.userID = 0
//        self.body = ""
//        self.title = ""
    }
    
    func mapping(map: Map) {
        userID <- map["userId"]
        id <- map["id"]
        title <- map["title"]
        body <- map["body"]
    }
 }
