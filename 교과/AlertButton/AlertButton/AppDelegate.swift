//
//  AppDelegate.swift
//  AlertButton
//
//  Created by giftbot on 2018. 5. 29..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = ViewController()
    window?.backgroundColor = .white
    window?.makeKeyAndVisible()
    
    return true
  }
}










