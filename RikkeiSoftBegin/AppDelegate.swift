//
//  AppDelegate.swift
//  RikkeiSoftBegin
//
//  Created by tund on 1/28/19.
//  Copyright © 2019 tund. All rights reserved.
//

import UIKit
import Rswift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var tabbar: CustomTabbarController?
    
    func createTabbarControler() -> CustomTabbarController {
        let tabbarController = CustomTabbarController()
        tabbarController.tabBar.tintColor = UIColor.green
        
        guard let homeVC = R.storyboard.home.homeViewController(),
            let carsVC = R.storyboard.dev.devViewController(),
            let serviceVC = R.storyboard.service.serviceViewController(),
            let newsVC = R.storyboard.news.newsViewController(),
            let supportVC = R.storyboard.support.supportViewController()
            else {return tabbarController}
        
        homeVC.title = "Home"
        let homeTitle = "Home"
        carsVC.title = "Dev"
        let carTitle = "Car"
        serviceVC.title = ""
        newsVC.title = "News"
        let newsTitle = "News"
        supportVC.title = "Support"
        let supportTitle = "Support"
        
        homeVC.tabBarItem = UITabBarItem(title: homeTitle.uppercased(), image: R.image.home()?.withRenderingMode(.alwaysOriginal), selectedImage: R.image.home_selected()?.withRenderingMode(.alwaysOriginal))
        carsVC.tabBarItem = UITabBarItem(title: carTitle.uppercased(), image: R.image.cars()?.withRenderingMode(.alwaysOriginal), selectedImage: R.image.cars_selected()?.withRenderingMode(.alwaysOriginal))
        serviceVC.tabBarItem = UITabBarItem(title: "", image: nil, tag: 2)
        newsVC.tabBarItem = UITabBarItem(title: newsTitle.uppercased(), image: R.image.news()?.withRenderingMode(.alwaysOriginal), selectedImage: R.image.news_selected()?.withRenderingMode(.alwaysOriginal))
        supportVC.tabBarItem = UITabBarItem(title: supportTitle.uppercased(), image: R.image.support()?.withRenderingMode(.alwaysOriginal), selectedImage: R.image.support_selected()?.withRenderingMode(.alwaysOriginal))
        
        let homeNav = UINavigationController(rootViewController: homeVC)
        let carsNav = UINavigationController(rootViewController: carsVC)
        let servicesNav = UINavigationController(rootViewController: serviceVC)
        let newsNav = UINavigationController(rootViewController: newsVC)
        let supportNav = UINavigationController(rootViewController: supportVC)
        homeNav.navigationBar.isHidden = true
        carsNav.navigationBar.isHidden = true
        servicesNav.navigationBar.isHidden = true
        newsNav.navigationBar.isHidden = true
        supportNav.navigationBar.isHidden = true
        
        
        tabbarController.viewControllers = [homeNav, carsNav, servicesNav, newsNav, supportNav]
        
        tabbarController.delegate = self
        
        return tabbarController
    }
    
    func moveToHome(){
        self.tabbar = self.createTabbarControler()
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = self.tabbar
        self.window?.makeKeyAndVisible()
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        moveToHome()
        

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}
extension AppDelegate: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if let nav = tabBarController.viewControllers?[tabBarController.selectedIndex] as? UINavigationController {
            nav.popToRootViewController(animated: false)
        }
        return true
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("select item: \(viewController.title)")
    }
}

