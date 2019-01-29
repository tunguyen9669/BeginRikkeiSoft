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
import ObjectMapper

class PostServices: APIServiceObject{
    
    func objectMapperParse(completion: @escaping (Result<[PostMap]>) -> Void) {
        let request = APIRequestProvider.shareInstance.getDataResult()
        serviceAgent.startRequest(request) { (json, error) in
            if let error = error {
                completion(Result.failure(error))
            } else {
                
                var list: Array<PostMap> = Mapper<PostMap>().mapArray(JSONString: json.description) ?? []
                completion(Result.success(list))
            }
        }
    }
    
    func getPosts(completion: @escaping (Result<[PostDTO]>) -> Void) {
        let request = APIRequestProvider.shareInstance.getDataResult()
        serviceAgent.startRequest(request) { (json, error) in
            if let error = error {
                completion(Result.failure(error))
            } else {
//                print(json)
                var list: Array<PostMap> = Mapper<PostMap>().mapArray(JSONString: json.description) ?? []
//                for item in list {
//                    print(item.id)
//                }
                
                var posts = [PostDTO]()
                for item in json.arrayValue {
                    posts.append(PostDTO(item))
                }
                completion(Result.success(posts))
            }
        }
    }
   
}
