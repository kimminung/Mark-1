//
//  ViewController.swift
//  계산기
//
//  Created by 김민웅 on 2018. 6. 1..
//  Copyright © 2018년 김민웅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let DisplayLabel = UILabel(frame: CGRect(x: 16, y: 183.5, width: 343, height: 93.5))
    var someAttribute = 0
    
    var count = 0 {
        didSet {
            DisplayLabel.text = "\(count)"
        }
    }
    
    var button1 = UIButton(frame: CGRect(x:0, y:292, width:94, height: 94))
    var button2 = UIButton(frame: CGRect(x:94, y:292, width:93.5, height: 94))
    var button3 = UIButton(frame: CGRect(x:187.5, y:292, width:94, height: 94))
    var button4 = UIButton(frame: CGRect(x: 0, y:386, width:94, height: 93.5))
    var button5 = UIButton(frame: CGRect(x:94, y:386, width:93.5, height: 93.5))
    var button6 = UIButton(frame: CGRect(x:187.5, y:386, width:94, height: 93.5))
    var button7 = UIButton(frame: CGRect(x:0, y:479.5, width:94, height: 94))
    var button8 = UIButton(frame: CGRect(x:94, y:479.5, width:93.5, height: 94))
    var button9 = UIButton(frame: CGRect(x:187.5, y:479.5, width:94, height: 94))
    var button0 = UIButton(frame: CGRect(x:0, y:573.5, width:94, height: 93.5))
    var buttonPlus = UIButton(frame: CGRect(x:281.5, y:292, width:93.5, height: 94))
    var buttonMinus = UIButton(frame: CGRect(x:281.5, y:386, width:93.5, height: 93.5))
    var buttonMultiply = UIButton(frame: CGRect(x:281.5, y:479.5, width:93.5, height: 94))
    var buttonDivision = UIButton(frame: CGRect(x:281.5, y:573.5, width:93.5, height: 93.5))
    var buttonEqual = UIButton(frame: CGRect(x:187.5, y:573.5, width:94, height: 93.5))
    var buttonC = UIButton(frame: CGRect(x:94, y:573.5, width:93.5, height: 93.5))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.setTitle("1", for: .normal)
        button2.setTitle("2", for: .normal)
        button3.setTitle("3", for: .normal)
        button4.setTitle("4", for: .normal)
        button5.setTitle("5", for: .normal)
        button6.setTitle("6", for: .normal)
        button7.setTitle("7", for: .normal)
        button8.setTitle("8", for: .normal)
        button9.setTitle("9", for: .normal)
        button0.setTitle("0", for: .normal)
        buttonPlus.setTitle("+", for: .normal)
        buttonMinus.setTitle("-", for: .normal)
        buttonDivision.setTitle("/", for: .normal)
        buttonMultiply.setTitle("*", for: .normal)
        buttonEqual.setTitle("=", for: .normal)
        buttonC.setTitle("C", for: .normal)
        button1.setTitleColor(UIColor.brown, for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        button3.setTitleColor(UIColor.blue, for: .normal)
        button4.setTitleColor(UIColor.blue, for: .normal)
        button5.setTitleColor(UIColor.blue, for: .normal)
        button6.setTitleColor(UIColor.blue, for: .normal)
        button7.setTitleColor(UIColor.blue, for: .normal)
        button8.setTitleColor(UIColor.blue, for: .normal)
        button9.setTitleColor(UIColor.blue, for: .normal)
        button0.setTitleColor(UIColor.blue, for: .normal)
        buttonPlus.setTitleColor(UIColor.blue, for: .normal)
        buttonMinus.setTitleColor(UIColor.blue, for: .normal)
        buttonMultiply.setTitleColor(UIColor.blue, for: .normal)
        buttonDivision.setTitleColor(UIColor.blue, for: .normal)
        buttonEqual.setTitleColor(UIColor.blue, for: .normal)
        buttonC.setTitleColor(UIColor.blue, for: .normal)
        //        button.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(button5)
        view.addSubview(button6)
        view.addSubview(button7)
        view.addSubview(button8)
        view.addSubview(button9)
        view.addSubview(button0)
        view.addSubview(buttonPlus)
        view.addSubview(buttonMinus)
        view.addSubview(buttonMultiply)
        view.addSubview(buttonDivision)
        view.addSubview(buttonEqual)
        view.addSubview(buttonC)
        
        DisplayLabel.text = "0"
        DisplayLabel.font = UIFont.boldSystemFont(ofSize: 25)
        DisplayLabel.textAlignment = .right
        view.addSubview(DisplayLabel)
    }
    
    
    //결과
    @objc func showResult(_ button:UIButton) {
        button.isSelected = !button.isSelected
    }
    
    //덧셈
    @objc func addNum(_ button:UIButton) {
        
    }
    
    //뺄셈
    @objc func delNum(_ button:UIButton) {
        
    }
    
    //곱셈
    @objc func multiNum(_ button:UIButton) {
        
    }
    
    //나눗셈
    @objc func divNum(_ button:UIButton) {
        
    }
    
    // 초기화
    @objc func resetNum(_ button:UIButton) {
        
    }
    
    
    //
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

