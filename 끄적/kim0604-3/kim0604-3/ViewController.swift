//
//  ViewController.swift
//  kim0604-3
//
//  Created by 김민웅 on 2018. 6. 4..
//  Copyright © 2018년 김민웅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var label = UILabel(frame: CGRect(x: view.frame.midX - 50, y: 100, width: 100, height: 50))
    lazy var button = UIButton(frame: CGRect(x: view.frame.midX - 50, y: 160, width: 100, height: 50))
    //    var textLabet = UILabel(frame: CGRect(x: view.frame.midX, y: 50, width: 100, height: 50))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "0"
        label.textAlignment = .center
        view.addSubview(label)
        
        button.setTitle("Next", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
        view.addSubview(button)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc private func buttonDidTap(_ button: UIButton) {
        
        
        let secondViewController = SecondViewController()

        //        secondViewController.label.text = "changed text"

        present(secondViewController, animated: true) {
            //            secondViewController.label.text = "changed text"
        }

        secondViewController.label.text = "changed text"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

