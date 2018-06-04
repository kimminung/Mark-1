//
//  SecondViewController.swift
//  kim0604-3
//
//  Created by 김민웅 on 2018. 6. 4..
//  Copyright © 2018년 김민웅. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    // - 50 마이너스 기호가 아니라 빼기 부호
    lazy var label = UILabel(frame: CGRect(x: view.frame.midX - 50, y: 100, width: 100, height: 50))
    //            lazy var label = UILabel(frame: CGRect(x: view.frame.midX + -50, y: 100, width: 100, height: 50))
    //            lazy var label = UILabel(frame: CGRect(x: view.frame.midX-50, y: 100, width: 100, height: 50))
    lazy var button = UIButton(frame: CGRect(x: view.frame.midX - 50, y: 160, width: 100, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "0"
        label.textColor = .white
        label.textAlignment = .center
        view.addSubview(label)
        
        button.backgroundColor = .blue
        button.setTitle("Button", for: .normal)
        
        //self = 이 클래스 전체
        //#selector(buttonDidTap(_:) = func buttonDidTap(_ button: UIButton)
        button.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
        view.addSubview(button)
        // Do any additional setup after loading the view.
    }
    
    
    @objc private func buttonDidTap(_ button: UIButton) {
        //presented     //내가 띄우는 놈
        //presenting    //나를 띄우는 놈
        
        
        //ViewController <- UIViewController UI는 label이라는 임의의 값을 가지고있지 않음
        //View컨트롤러를 만들면서 우리가 let labet을 만들어줌으로 사용 가능한것
        //        (presentingViewController as? ViewController)//?.label.addSubview(button)
        
        
        //타입캐스팅으로
        //count의 텍스트가 int로 변환할 수 없는 값이 있을 수 있기 때문에 guard문으로 옵셔널 바인딩
        guard let viewController = presentingViewController as? ViewController,
            let text = viewController.label.text,
            let count = Int(text)
            else {return}
        
        viewController.label.text = "\(count + 1)"
        dismiss(animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
