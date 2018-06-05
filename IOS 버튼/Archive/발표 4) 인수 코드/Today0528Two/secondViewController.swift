//
//  secondViewController.swift
//  Today0528Two
//
//  Created by 박인수 on 28/05/2018.
//  Copyright © 2018 inswag. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var firstBtn: UIButton!
    @IBOutlet weak var secondBtn: UIButton!
    
    var number: Int = 1
    
    @IBAction func firstBtn(_ sender: UIButton) {
        number *= 2
        secondBtn.setTitle(String(number), for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstBtn.setTitle("Btn1", for: .normal)
        secondBtn.setTitle("Btn2", for: .normal )

        // Do any additional setup after loading the view.
    }
}
