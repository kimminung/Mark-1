//
//  ViewController.swift
//  kim0604-2
//
//  Created by 김민웅 on 2018. 6. 4..
//  Copyright © 2018년 김민웅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton(frame: CGRect(x: 299, y: 609, width: 60, height: 38))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.setTitle("Next", for: .normal)
        view.addSubview(button)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction private func showSecondViewController(_ button: UIButton) {
        let secondViewController = SecondViewController
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

