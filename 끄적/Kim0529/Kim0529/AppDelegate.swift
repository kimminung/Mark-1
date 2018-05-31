//
//  AppDelegate.swift
//  Kim0529
//
//  Created by 김민웅 on 2018. 5. 29..
//  Copyright © 2018년 김민웅. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
                let window = UIWindow(frame: UIScreen.main.bounds)
                window.rootViewController = ViewController()
                window.backgroundColor = UIColor.white
        
                window.makeKeyAndVisible()  //이 윈도우를 키 윈도우로 쓸것임. 지금부터 보여주라고 명령
                //window.makeKeyAndVisible()
        
                self.window = window
        return true
    }



}

