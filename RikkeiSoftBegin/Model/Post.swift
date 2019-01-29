//
//  Post.swift
//  RikkeiSoftBegin
//
//  Created by tund on 1/29/19.
//  Copyright © 2019 tund. All rights reserved.
//

import Foundation

class Post: NSObject {
    var userID: Int
    var id: Int
    var title: String
    var body: String
    
    init(_ postDto: PostDTO) {
        self.userID = postDto.userID
        self.id = postDto.id
        self.title = postDto.title
        self.body = postDto.body
    }
}
