//
//  AppDelegate.swift
//  SafariOauthLogin
//
//  Created by Catherine Schwartz on 27/07/2015.
//  Copyright © 2015 StrawberryCode. All rights reserved.
//

import UIKit
import SafariServices

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, SFSafariViewControllerDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


/*
    // DEPRECATED in iOS9
     
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {
        
        // just making sure we send the notification when the URL is opened in SFSafariViewController
        if (sourceApplication == "com.apple.SafariViewService") {
            NSNotificationCenter.defaultCenter().postNotificationName(kSafariViewControllerCloseNotification, object: url)
            return true
        }
        return true
    }
*/
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any]) -> Bool {
        
//        print("app: \(app)")
//        print("url: \(url)")
//        print("options: \(options)")
        
        if let sourceApplication = options[UIApplicationOpenURLOptionsKey.sourceApplication] {
            
            if (String(describing: sourceApplication) == "com.apple.SafariViewService") {
                NotificationCenter.default.post(name: Notification.Name(rawValue: kSafariViewControllerCloseNotification), object: url)
                return true
            }
        }
        
        return true
    }
    
}

