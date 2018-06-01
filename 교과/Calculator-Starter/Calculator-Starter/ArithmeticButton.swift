//
//  ArithmeticButton.swift
//  Calculator-Starter
//
//  Created by 김민웅 on 2018. 6. 1..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

class ArithmeticButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let text = titleLabel?.text {
            switch text {
            case "+": print("+")
            case "-": print("-")
            default:
                print("others")
            }
        }
    }
//    func addNumbers(num1: Int, num2: Int) -> Int {
//        return num1 + num2
//    }
//    
//    func subtractingNumbers(num1: Int, num2: Int) -> Int {
//        return num1 - num2
//    }
    
}
