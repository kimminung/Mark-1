//
//  ViewController.swift
//  AlertButton
//
//  Created by giftbot on 2018. 5. 29..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let countLabel = UILabel(frame: CGRect(x: 50, y: 200, width: 70, height: 40))
  var someAttribute = 0
  
  var count = 0 {
    didSet {
      countLabel.text = "\(count)"
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let button = UIButton(type: .contactAdd)
    button.frame.origin = CGPoint(x: 50, y: 100)
    button.addTarget(self, action: #selector(showAlert(_:)), for: .touchUpInside)
    view.addSubview(button)
    
    countLabel.text = "0"
    countLabel.font = UIFont.boldSystemFont(ofSize: 25)
    view.addSubview(countLabel)
  }
  
  @objc func showAlert(_ button: UIButton) {
    button.isSelected = !button.isSelected
    
    let alertController = UIAlertController(title: "카운트 추가?", message: nil, preferredStyle: .alert)
    
    let okAction = UIAlertAction(title: "Add Count", style: .default) { _ in
      self.count += 1
      print("Add count 1")
    }
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
      print("Cancel")
    }
    let resetCountAction = UIAlertAction(title: "Reset", style: .destructive) { _ in
      self.count = 0
      print("Reset Count")
    }
    
    for action in [okAction, cancelAction, resetCountAction] {
      alertController.addAction(action)
    }
    
    present(alertController, animated: true)
  }
}










