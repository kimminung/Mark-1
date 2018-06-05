//
//  ViewController.swift
//  Today0528Two
//
//  Created by 박인수 on 28/05/2018.
//  Copyright © 2018 inswag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    var changeB2 : Int = 0
    var changeB3 : Int = 0
    var countOfTry : Int = 0

    
    @IBAction func doB1(_ sender: UIButton) {
        changeB2 += 2
        changeB3 += 3
        countOfTry += 1
        secondButton.setTitle(String(changeB2), for: .normal)
        thirdButton.setTitle(String(changeB3), for: .normal)
        firstButton.setTitle("현재 \(countOfTry)번째 변환이 완료되었습니다.", for: .normal)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstButton.setTitle("B1", for: .normal)
        firstButton.setTitleColor(UIColor.brown, for: .normal)
        secondButton.setTitle("B2", for: .normal)
        secondButton.setTitleColor(UIColor.blue, for: .normal)
        thirdButton.setTitle("B3", for: .normal)
        thirdButton.setTitleColor(UIColor.red, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

