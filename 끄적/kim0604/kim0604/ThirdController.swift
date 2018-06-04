//
//  ThirdController.swift
//  kim0604
//
//  Created by 김민웅 on 2018. 6. 4..
//  Copyright © 2018년 김민웅. All rights reserved.
//

import UIKit

class ThirdController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWA")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDA")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWD") // 동작하다 멈출때 , 사라질때 사용
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDD")
    }
    
    @IBAction private func dismissViewController(_ sender: Any) {
        
        //        present <-> dismiss
        //        presentingViewController?.dismiss(animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
        /*
         //        dismiss(animated: true) {
         //            print("Dismissed Third View Controller")
         //            //        dismiss(animated: true)
         //        }
         //    }
         */
        
        //애플 권장사항으로 작성한것
        presentingViewController?.dismiss(animated: true)
        
        /*
         print(self.presentedViewController) //내가 띄운 뷰 컨트롤러 -> nil
         print(self.presentingViewController)    //나를 띄우고 있는 뷰의 컨트롤러 -> secon
         print(self.presentingViewController?.presentedViewController)   //자기 자신을 나타냄 third
         print(self.presentingViewController?.presentingViewController)  //나를 띄운것의 자기자신 view
         */
        
        /*
         presentingViewController?.dismiss(animated: true)   // -> secon
         presentingViewController?.presentingViewController?.dismiss(animated: true) -> view
         */
        
    }
    deinit {
        print("Deinit")
    }
    
    
    
}

