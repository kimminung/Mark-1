//
//  ViewController.swift
//  taehyeongButton
//
//  Created by 박인수 on 28/05/2018.
//  Copyright © 2018 inswag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn2.setTitle("111", for: .normal)
    }

    @IBAction func btnClick(_ sender: UIButton) {
        if btn.titleLabel!.text! == "Button" {  // 번외 btn의 타이틀이 Button일때 btn의 타이틀을 111로 바꿈
            btn.setTitle("111", for: .normal)
        } else {
            btn.setTitle("Button", for: .normal)  // btn의 타이틀이 Button이 아닐시 Button으로 바꿈
        }
    }

    
    @IBAction func btn1Click(_ sender: Any) {
        var btn2Title = btn2.titleLabel!.text!  //btn2의 타이틀을 가져옴
        print("btn2Title = \(btn2Title)")
        var btn2TitleInt = Int(btn2Title)!  //btn2의 타이틀을 int로 변환
        btn2TitleInt += 1 // int 111이니깐 +1 가능
        var btn2TitleStr = String(btn2TitleInt)   // int111을 다시 String으로 형변환
        btn2.setTitle(btn2TitleStr, for: .normal)  //btn2의 타이틀로 설정.
    }

    // 요게 기본코드
    

    

}

