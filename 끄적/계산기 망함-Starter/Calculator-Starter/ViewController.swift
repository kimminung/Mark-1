//
//  ViewController.swift
//  Calculator-Starter
//
//  Created by giftbot on 2018. 6. 1..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var operand1 = 0
    var operand2 = 0
    var sign = ""
    
    @IBOutlet private weak var displayLabel: UILabel!
    
        @IBAction func calculate(_ button: UIButton) {
    
        }
    
    //    var sum: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func button1(_ sender: Any) {
        if(Int(displayLabel.text!)! == 0 ){
            displayLabel.text = "1"
        }else{
            displayLabel.text = displayLabel.text! + "1"
        }
    }
    @IBAction func button2(_ sender: Any) {
        if(Int(displayLabel.text!)! == 0 ){
            displayLabel.text = "2"
        }else{
            displayLabel.text = displayLabel.text! + "2"
        }
    }
    @IBAction func button3(_ sender: Any) {
        if(Int(displayLabel.text!)! == 0 ){
            displayLabel.text = "3"
        }else{
            displayLabel.text = displayLabel.text! + "3"
        }
    }
    @IBAction func button4(_ sender: Any) {
        if(Int(displayLabel.text!)! == 0 ){
            displayLabel.text = "4"
        }else{
            displayLabel.text = displayLabel.text! + "4"
        }
    }
    @IBAction func button5(_ sender: Any) {
        if(Int(displayLabel.text!)! == 0 ){
            displayLabel.text = "5"
        }else{
            displayLabel.text = displayLabel.text! + "5"
        }
    }
    @IBAction func button6(_ sender: Any) {
        if(Int(displayLabel.text!)! == 0 ){
            displayLabel.text = "6"
        }else{
            displayLabel.text = displayLabel.text! + "6"
        }
    }
    @IBAction func button7(_ sender: Any) {
        if(Int(displayLabel.text!)! == 0 ){
            displayLabel.text = "7"
        }else{
            displayLabel.text = displayLabel.text! + "7"
        }
    }
    @IBAction func button8(_ sender: Any) {
        if(Int(displayLabel.text!)! == 0 ){
            displayLabel.text = "8"
        }else{
            displayLabel.text = displayLabel.text! + "8"
        }
    }
    @IBAction func button9(_ sender: Any) {
        if(Int(displayLabel.text!)! == 0 ){
            displayLabel.text = "9"
        }else{
            displayLabel.text = displayLabel.text! + "9"
        }
    }
    @IBAction func button0(_ sender: Any) {
        if(Int(displayLabel.text!)! == 0 ){
            displayLabel.text = "0"
        }else{
            displayLabel.text = displayLabel.text! + "0"
        }
    }
    @IBAction func clear(_ sender: Any) {
        displayLabel.text = "0"
    }
    @IBAction func plus(_ sender: Any) {
        operand1 = Int(displayLabel.text!)!
        sign = "+"
        displayLabel.text = "0"

    }
    @IBAction func minus(_ sender: Any) {
        operand1 = Int(displayLabel.text!)!
        sign = "-"
        displayLabel.text = "0"
    }
    @IBAction func multiply(_ sender: Any) {
        operand1 = Int(displayLabel.text!)!
        sign = "*"
        displayLabel.text = "0"
    }
    @IBAction func division(_ sender: Any) {
        operand1 = Int(displayLabel.text!)!
        sign = "/"
        displayLabel.text = "0"
    }
    @IBAction func equal(_ sender: Any) {
        if(sign == "+"){
            operand2 = operand1 + Int(displayLabel.text!)!
            displayLabel.text = String(operand2)
        }else if(sign == "-"){
            operand2 = operand1 - Int(displayLabel.text!)!
            displayLabel.text = String(operand2)
        }else if(sign == "*"){
            operand2 = operand1 * Int(displayLabel.text!)!
            displayLabel.text = String(operand2)
        }else if(sign == "/"){
            operand2 = operand1 / Int(displayLabel.text!)!
            displayLabel.text = String(operand2)
        }
    }
    
    
    
    
}

