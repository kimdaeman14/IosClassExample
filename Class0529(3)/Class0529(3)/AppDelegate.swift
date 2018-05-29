//
//  AppDelegate.swift
//  Class0529(3)
//
//  Created by kimdaeman14 on 2018. 5. 29..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
   
        let window = UIWindow(frame : UIScreen.main.bounds)
        window.rootViewController = ViewController()
        window.backgroundColor=UIColor.white
        window.makeKeyAndVisible()
        self.window=window
        
        return true
    }


}

