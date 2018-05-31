//
//  AppDelegate.swift
//  Kim0528
//
//  Created by 김민웅 on 2018. 5. 28..
//  Copyright © 2018년 김민웅. All rights reserved.
//

import UIKit

@UIApplicationMain      //@UIApplicationMain을 붙여주면 여기서부터 시작.......

//@UIApplicationMain이 시작되기 전에 어떤 결과물을 보여주고 클래스를 실행하고싶을때는 main.swift 파일을 만들어서 내용을 넣으면 된다
//@UIApplicationMain은 주석처리
//(main.swift가 있는지 부터 검사를 하니까 먼저 실행됨)

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // 어플리케이션이 실행된 직후 사용자의 화면에 보여지기 직전에 호출
        
        //-------------------메인의 실제 모습-----------------
        //Main.storyboard를 안쓸때 이걸로 시뮬 돌림
//        let window = UIWindow(frame: UIScreen.main.bounds)
//        window.rootViewController = ViewController()
//        window.backgroundColor = UIColor.white
//
//        window.makeKeyAndVisible()  //이 윈도우를 키 윈도우로 쓸것임. 지금부터 보여주라고 명령
//        //window.makeKeyAndVisible()
//
//        self.window = window
        //------------------------------------------------
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        //어플리케이션이 최초 실행될 때 호출되는 메소드
        print("\n---------applicationWillResignActive-----------\n")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        // 어플리케이션이 백그라운드 상태로 전환된 직후 호출
        print("applicationDidEnterBackground")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        // 어플리케이션이 Active상태가 되기 직전에, 화면에 보여지기 직전의 시점에 호출
        print("applicationWillEnterForeground")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        //어플리케이션이  Active상태로 전환된 직후 호출
        print("applicationDidBecomeActive")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        //어플리케이션이 종료되기 직전에 호출
        print("applicationWillTerminate")
    }
    
    
}

