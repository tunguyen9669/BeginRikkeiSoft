//
//  CustomTabbarController.swift
//  RikkeiSoftBegin
//
//  Created by tund on 1/29/19.
//  Copyright © 2019 tund. All rights reserved.
//

import Foundation
import UIKit

class CustomTabbarController: UITabBarController {
    override func viewDidLoad() {
        self.setBackgroundColor(color: UIColor.blue)
        super.viewDidLoad()
    }
    
    fileprivate func setBackgroundColor(color: UIColor) {
        let frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: 90)
        let view = UIView(frame: frame)
        view.backgroundColor = color
        tabBar.addSubview(view)
    }
}
