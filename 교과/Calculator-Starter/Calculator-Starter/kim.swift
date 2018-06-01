//
//  kim.swift
//  Calculator-Starter
//
//  Created by 김민웅 on 2018. 6. 1..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

class kim: UIView {
    
    let button = UIButton(type: UIButtonType.contactAdd)
    let label = UILabel()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        backgroundColor = .blue
        
        button.frame.origin = CGPoint(x:50, y:50)
        label.frame = CGRect(x: 150, y: 50, width: 100, height: 50)
        label.text = "label"
        
        addSubview(button)
        addSubview(label)
    }

}
