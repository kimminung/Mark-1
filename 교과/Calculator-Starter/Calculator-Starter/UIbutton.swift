//
//  UIbutton.swift
//  Calculator-Starter
//
//  Created by 김민웅 on 2018. 6. 1..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

class UIbutton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        backgroundColor = .green
        layer.cornerRadius = frame.width / 2  //겉에 얼마나 둥글게 만들어 줄건지
        
        if Int(titleLabel!.text!)! % 2 == 0 {       //짝수 검정
            backgroundColor = .black
        }else {
            backgroundColor = .blue                 //홀수 파랑
            layer.cornerRadius = frame.width / 2
        }
    }

}
