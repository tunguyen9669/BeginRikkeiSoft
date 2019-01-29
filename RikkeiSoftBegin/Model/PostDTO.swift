//
//  PostDTO.swift
//  RikkeiSoftBegin
//
//  Created by tund on 1/29/19.
//  Copyright © 2019 tund. All rights reserved.
//

import Foundation
import SwiftyJSON

class PostDTO {
    var userID: Int
    var id: Int
    var title: String
    var body: String
    
    init(_ json: JSON) {
        self.userID = json["userId"].intValue
        self.id = json["id"].intValue
        self.title = json["title"].stringValue
        self.body = json["body"].stringValue
    }
}
