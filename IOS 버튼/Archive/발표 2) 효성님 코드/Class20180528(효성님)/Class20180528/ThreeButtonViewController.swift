//
//  ThreeButtonViewController.swift
//  Class20180528
//
//  Created by H on 2018. 5. 28..
//  Copyright © 2018년 H. All rights reserved.
//

import UIKit

class ThreeButtonViewController: UIViewController {
    
    // 뷰컨트롤러를 활용한 버튼 구현 및 동작 설정
    var number: Int = 0
    var number2: Int = 0

    @IBOutlet weak var countButton1: UIButton!
    @IBOutlet weak var countingButton1: UIButton!

    @IBAction func numberCount(_ sender: Any) {
        self.number2 += 1
        countingButton1.setTitle(String(self.number2), for: .normal)
    }


    
    
    let countButton: UIButton = UIButton(frame: CGRect(x: 80, y: 80, width: 200, height: 80))
    let countingButton: UIButton = UIButton(frame: CGRect(x: 80, y: 200, width: 200, height: 80))
    
    // 코드를 활용한 버튼 구현 및 동작 설정
    override func viewDidLoad() {
        super.viewDidLoad()

        countButton.setTitle("Click", for: .normal)
        countButton.setTitleColor(UIColor.black, for: .normal)
        countButton.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
        view.addSubview(countButton)

        countingButton.setTitle(String(self.number), for: .normal)
        countingButton.setTitleColor(UIColor.black, for: .normal)
        view.addSubview(countingButton)

        print("ThreeButtonViewControllerView Did Load")
    }

    
    @objc func buttonDidTap(_ countButton: UIButton) {
       self.number += 1
        self.countingButton.setTitle(String(self.number), for: .normal)
    }
}
