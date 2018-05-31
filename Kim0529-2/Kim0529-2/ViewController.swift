//
//  ViewController.swift
//  Kim0529-2
//
//  Created by 김민웅 on 2018. 5. 29..
//  Copyright © 2018년 김민웅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let view1 = UIView(frame: CGRect(x: 15, y: 15, width: view.frame.width - 30, height: view.frame.height - 30))
        view1.backgroundColor = UIColor.blue
        view.addSubview(view1)
        
        let view2 = UIView(frame: CGRect(x: 15, y: 15, width: view1.bounds.width - 30, height: view1.bounds.height - 30))
        view2.backgroundColor = UIColor.red
        view1.addSubview(view2)
        
        let view3 = UIView(frame: CGRect(x: 15, y: 15, width: view2.bounds.width - 30, height: view2.bounds.height - 30))
        view3.backgroundColor = UIColor.green
        view2.addSubview(view3)
    }
    
    
}

