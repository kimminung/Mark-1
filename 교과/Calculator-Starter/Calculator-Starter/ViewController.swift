//
//  ViewController.swift
//  Calculator-Starter
//
//  Created by giftbot on 2018. 6. 1..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {  //final = 상속 못받게 함
    
    @IBOutlet private weak var displayLabel: UILabel!
    
    @IBOutlet private weak var plusButton: ArithmeticButton!
    @IBOutlet private weak var minusButton: ArithmeticButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        plusButton.addNumbers(num1: 3, num2: 2)
//        plusButton.backgroundColor = .blue
    }
    
    @IBAction func calculate(_ button: UIButton) {
        
    }
}

