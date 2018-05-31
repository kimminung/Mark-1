//
//  AppDelegate.swift
//  Kim0529-3
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
//        let window = UIWindow(frame: UIScreen.main.bounds)
//        window.rootViewController = ViewController()
//        window.backgroundColor = UIColor.white
//
//        window.makeKeyAndVisible()  //이 윈도우를 키 윈도우로 쓸것임. 지금부터 보여주라고 명령
//        //window.makeKeyAndVisible()
//
//        self.window = window
        
        window = UIWindow(frame: UIScreen.main.bounds)  //스크린은 메인을 바운드해서 씀
        window?.rootViewController = ViewController()   //뷰 컨트롤러를 연결
        window?.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()                     //이 window 테이블을 키로 써서 보여줌
        return true
    }

    


}

