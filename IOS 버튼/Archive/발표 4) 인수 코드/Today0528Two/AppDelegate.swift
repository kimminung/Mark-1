//
//  AppDelegate.swift
//  Today0528Two
//
//  Created by 박인수 on 28/05/2018.
//  Copyright © 2018 inswag. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        print("----- didFinishLaunchingWithOptions -----")
        // 어플리케이션이 실행된 직후 사용자의 화면에 보여지기 직전에 호출.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        print("----- applicationWillResignActive -----")
        // 어플리케이션이 Inactive 상태로 전환되기 직전 호출.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("----- applicationDidEnterBackground -----")
        // 어플리케이션이 백그라운드 상태로 전환된 직후 호출.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("----- applicationWillEnterForeground -----")
        // 어플리케이션이 Active 상태가 되기 직전에, 화면에 보여지기 직전의 시점에 호출.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("----- applicationDidBecomeActive -----")
        // 어플리케이션이 Active 상태로 전환된 직후 호출.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("----- applicationWillTerminate -----")
        // 어플리케이션이 종료되기 직전에 호출.
    }


}

