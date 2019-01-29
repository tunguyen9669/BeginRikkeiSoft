//
//  PostService.swift
//  RikkeiSoftBegin
//
//  Created by tund on 1/29/19.
//  Copyright © 2019 tund. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class PostServices: APIServiceObject{
    func getPosts(completion: @escaping (Result<[PostDTO]>) -> Void) {
        let request = APIRequestProvider.shareInstance.getDataResult()
        serviceAgent.startRequest(request) { (json, error) in
            if let error = error {
                completion(Result.failure(error))
            } else {
                var posts = [PostDTO]()
                for item in json.arrayValue {
                    posts.append(PostDTO(item))
                }
                completion(Result.success(posts))
            }
        }
    }
}
