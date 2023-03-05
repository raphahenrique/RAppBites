//
//  AppDelegate.swift
//  RAppBites
//
//  Created by Raphael on 21/02/23.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: RAppBitesCoordinator?
    var tabBarController: UITabBarController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let homeNavController = UINavigationController()

        coordinator = RAppBitesCoordinator(navigationController: homeNavController)
        coordinator?.start()

        // Create the three view controllers
        let listViewController = UIViewController()
        let userViewController = UIViewController()
        
        // Set the title and tab bar item for each view controller
        listViewController.title = "List"
        listViewController.view.backgroundColor = .blue
        listViewController.tabBarItem = UITabBarItem(title: "List", image: UIImage(systemName: "list.bullet"), tag: 1)
        userViewController.title = "User"
        userViewController.view.backgroundColor = .red
        userViewController.tabBarItem = UITabBarItem(title: "User", image: UIImage(systemName: "person"), tag: 2)
        
        // Create the tab bar controller and set its view controllers
        tabBarController = UITabBarController()
        tabBarController?.viewControllers = [
            homeNavController,
            listViewController,
            userViewController
        ]
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

}
