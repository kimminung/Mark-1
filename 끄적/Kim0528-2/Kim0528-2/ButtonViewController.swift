//
//  ButtonViewController.swift
//  Kim0528-2
//
//  Created by 김민웅 on 2018. 5. 28..
//  Copyright © 2018년 김민웅. All rights reserved.
//

//import Foundation
import UIKit

class ButtonViewController: UIViewController {
    var button = UIButton(frame: CGRect(x:80, y:80, width:200, height: 80))
    var button2 = UIButton(frame: CGRect(x:80, y:130, width:200, height: 80))
//    @IBOutlet weak var otherButton: UIButton!
//    @IBOutlet weak var button: UIButton!
//    @IBOutlet weak var button2: UIButton!
    
    var sum: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print("==========")
        
        button.setTitle("button1", for: .normal)
        button2.setTitle("button2", for: .normal)
        button.setTitleColor(UIColor.brown, for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
        view.addSubview(button)
        view.addSubview(button2)
        
    }
    @IBAction func buttonDidTap(_ sender: UIButton) {
        sum += 1
        button2.setTitle("\(sum)", for: UIControlState.normal)
    }
}
