//
//  ViewController.swift
//  kim0604
//
//  Created by 김민웅 on 2018. 6. 4..
//  Copyright © 2018년 김민웅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .orange
    }
    //    override func viewDidAppear(_ animated: Bool) {
    //        super.viewDidAppear(animated)
    //    }
    @IBAction private func showSecondViewController(_ button: UIButton) {
        let secondViewController = SecondViewController()
        //        secondViewController.view.backgroundColor = .red
        
        present(secondViewController, animated: true) {
            print("Present Second View Controller")
        }
    }
    
    @IBAction private func showSecondViewControllerUsingStoryboard(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        /*
         let secondViewCont = storyboard.instantiateViewController(withIdentifier: "SecondViewCont")
         //세컨뷰는 트릭..사실 첫화면 띄움             //스토리보드의 화살표가 달린 첫번째 로딩화면을 표시
         if let secondViewController = storyboard.instantiateInitialViewController() {
         present(secondViewController, animated: true)
         }*/     //이렇게 쓰면 안됌
        
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController")     //스토리보드의 아이덴티티를 열어서 ID값을 정해줌
        
        
        present(secondViewController, animated: true)
        secondViewController.view.backgroundColor = .gray
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
    
    @IBAction func unwindToViewController(_ sender: UIStoryboardSegue) {
        let sourceViewController = sender.source
        print(sender.source)    //출발지
        print(sender.destination)
        
        
        // Use data from the view controller which initiated the unwind segue
    }
    
    deinit {
        print("Deinit")
    }
    
    //    let alertController...
    
    //    override func didReceiveMemoryWarning() {
    //        super.didReceiveMemoryWarning()
    //        // Dispose of any resources that can be recreated.
    //    }
    
    
}

