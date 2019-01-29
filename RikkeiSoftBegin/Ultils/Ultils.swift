//
//  Ultils.swift
//  RikkeiSoftBegin
//
//  Created by tund on 1/29/19.
//  Copyright © 2019 tund. All rights reserved.
//

import Foundation
import UIKit

//MARK: AppDelegate instance

let appDelegate = UIApplication.shared.delegate as! AppDelegate

let windowAppDelegate = appDelegate.window!

//MARK: App version

let appName = Bundle.main.infoDictionary?["CFBundleDisplayName"] as! String
let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
let buildVersion = Bundle.main.infoDictionary?["CFBundleVersion"] as! String
let bundleIdentifier = Bundle.main.infoDictionary?["CFBundleIdentifier"] as! String

//func colorFromHex(_ hexString: String) -> UIColor {
//   
//    let color = UIColor(
//    return color
//}
