//
//  ViewController.swift
//  Kim0529-3
//
//  Created by 김민웅 on 2018. 5. 29..
//  Copyright © 2018년 김민웅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //공부해보기
//    @IBDesignable
//    @IBInspectable

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton(type: .custom)
        let label = UILabel(frame: CGRect(x: 50, y: 60, width: 100, height: 100))
        
        button.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        //        let button = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        button.setTitle("Plus", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(showAlert(_:)), for: .touchUpInside)
        view.addSubview(button)
        
        label.text = String("123")
        view.addSubview(label)
        
    }

    @objc func showAlert(_ button: UIButton) {
        let alertController = UIAlertController(title: "타이틀", message: "메세지", preferredStyle: .alert)
//        let alertController = UIAlertController(title: "타이틀", message: "메세지", preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in   //일반적으로 디폴트
//            label +1
            print("OK Action")

        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in    //클로져 = 함수 = 클로져
            //종료
            print("Cancel Action")
        }
        let destructiveAction = UIAlertAction(title: "Destructive", style: .destructive) { _ in    //클로져 = 함수 = 클로져
            //초기화 label = 0
            print("destructive Action")
        }
        alertController.addAction(okAction)
        alertController.addAction(cancelAction) //cancel은 왼쪽에 뜨고 한개만 넣을수있으며 맨 아래 위치함
        alertController.addAction(destructiveAction)    //중요한 데이터 날릴때
        
        //for in 안에 Alert 넣고 반복 돌리기
        present(alertController, animated: true, completion: nil)
        //
        //
        //completion : 끝나고나서할동작
    }
    
}

