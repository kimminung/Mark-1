//
//  ButtonViewController.swift
//  Kim0528
//
//  Created by 김민웅 on 2018. 5. 28..
//  Copyright © 2018년 김민웅. All rights reserved.
//

//import Foundation
import UIKit

class ButtonViewController: UIViewController {
    
//    @IBAction func plus(_ sender: UIButton) {
//        button.setTitle("누르면 커짐", for: .normal)
//        button.addTarget(self, action: #selector(buttonPlus(_:)), for: .touchUpInside)
//    }
    
    
    var button = UIButton(frame: CGRect(x:80, y:80, width: 200, height: 80))
    
    @IBOutlet weak var otherButton: UIButton!
    var sum: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print("=== ButtonViewController View Did Load ===")
        
        
        button.setTitle("테스트 버튼", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
//    @objc func buttonPlus(_ button: UIButton) {
//        var total = 0
//        for number in button: UIButton {
//            total += number
//        }
//    }
    
    @IBAction func buttonDidTap(_ sender: UIButton) {
//        var sum: Int = 0
        sum += 1
        otherButton.setTitle("\(sum)", for: UIControlState.normal)
        print("Button Did Tap")
    }
}
