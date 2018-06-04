//
//  BViewController.swift
//  kim0604
//
//  Created by 김민웅 on 2018. 6. 4..
//  Copyright © 2018년 김민웅. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    deinit {
        print("Deinit")
    }
    //    //unwind = 잠긴것을 풀다
    //    @IBAction func unwindToSecondViewController(_ sender: UIStoryboardSegue) {
    //        let sourceViewController = sender.source
    //        //        sender.identifier
    //        
    //        print(sender.source)    //출발지
    //        print(sender.destination)   //목적지
    //    }
    //    override func didReceiveMemoryWarning() {
    //        super.didReceiveMemoryWarning()
    //        // Dispose of any resources that can be recreated.
    //    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
