//
//  ViewController.swift
//  RikkeiSoftBegin
//
//  Created by tund on 1/28/19.
//  Copyright © 2019 tund. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var postArr = [Post]()
    let services = PostServices()

    override func viewDidLoad() {
        super.viewDidLoad()
        bai4(arr: [-1, 2, 3, -8, 1, 6, -3, 4, 2, -8, 5])
        getData { (data) in
            for item in data {
                print(item.body)
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: - function
    
    func getData(_ completion: @escaping([Post]) -> Void) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        services.getPosts() { (result) in
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
            switch result {
            case .success(let posts):
                for item in posts {
                    self.postArr.append(Post(item))
                }
                print(1)
                completion(self.postArr)
            case .failure(let error):
                print("Fail get data")
                print(error)
            }
        }
    }
    
    func bai4(arr: [Float]) {
        var currentSum = 0
        var maxSum = 0
        var sumCountStartIndex = 0
        var sumCountEndIndex = 0
        var maxIndexStart = 0
        var maxIndexEnd = 0
        for i  in 0..<arr.count {
            currentSum = currentSum + Int(arr[i])
            sumCountEndIndex = i
            
            if currentSum <= 0 {
                currentSum = 0
                sumCountStartIndex = i + 1
            }
            
            if maxSum < currentSum {
                maxIndexStart = sumCountStartIndex
                maxIndexEnd = sumCountEndIndex
                maxSum = currentSum
            }
            
        }
        print("Vị trí bắt đầu: \(maxIndexStart)")
        print("Vị trí kết thúc: \(maxIndexEnd)")
        print("Với tổng là: \(maxSum)")
        
    }
}



