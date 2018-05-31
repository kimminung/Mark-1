//
//  ViewController.swift
//  Kim0529
//
//  Created by 김민웅 on 2018. 5. 29..
//  Copyright © 2018년 김민웅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view1 = UIView(frame: CGRect(x:15, y:15, width: view.frame.width - 30 , height: 100))
        
        let view2 = UIView(frame: CGRect(x: view.frame.width - 15 - 345, y: view.frame.height - 15 - 100, width:345, height: 100))
        // Do any additional setup after loading the view, typically from a nib.
        
        //        view.setTitle("button1", for: .normal)
        //        view2.setTitle("button2", for: .normal)
        view1.backgroundColor = UIColor.blue
        view2.backgroundColor = UIColor.red
        //        button.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
        view.addSubview(view1)
        view.addSubview(view2)
        
    }
    //    @IBAction func buttonDidTap(_ sender: UIButton) {
    //        sum += 1
    //        button2.setTitle("\(sum)", for: UIControlState.normal)
    //    }
    
    
}

