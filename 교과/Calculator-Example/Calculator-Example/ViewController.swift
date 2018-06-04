//
//  ViewController.swift
//  Calculator-Example
//
//  Created by giftbot on 2018. 6. 3..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

enum Operator: String {
  case addition = "+"
  case subtraction = "-"
  case multiplication = "*"
  case division = "/"
  
  var calculate: (Int, Int) -> Int {
    switch self {
    case .addition:         return (+)
    case .subtraction:      return (-)
    case .multiplication:   return (*)
    case .division:         return (/)
    }
  }
}

enum Command {
  case clear
  case equal
  case operation(Operator)
  case addNumber(Character)
}

// MARK: - Class Definition

final class ViewController: UIViewController {
  
  // MARK: Properties
  
  @IBOutlet private weak var displayLabel: UILabel!
  
  private var resultNum = 0
  private var displayText = ""
  private var bufferOperator: Operator?

  
  // MARK: Action Handler
  
  @IBAction private func buttonDidTap(_ button: UIButton) {
    guard let command = button.titleLabel?.text else { return }

    switch command {
    case "AC":
      changeState(command: .clear)
    case "=":
      changeState(command: .equal)
    case "+", "-", "*", "/":
      changeState(command: .operation(Operator(rawValue: command)!))
    default:
      changeState(command: .addNumber(command.first!))
    }
  }
  
  
  private func changeState(command: Command) {
    switch command {
    case .clear:
      clearAndSet(as: 0)
    case .equal:
      guard let op = bufferOperator else { return }
      clearAndSet(as: op.calculate(resultNum, Int(displayText) ?? 0))
    case .operation(let op):
      guard !displayText.isEmpty else { return bufferOperator = op }
      calculate(for: op)
    case .addNumber(let c):
      displayText = displayText.isEmpty ? String(c) : displayText + String(c)
      displayLabel.text = addComma(to: displayText)
    }
  }
  
  
  private func clearAndSet(as num: Int, and buffer: Operator? = nil) {
    resultNum = num
    displayLabel.text = addComma(to: "\(num)")
    bufferOperator = buffer
    displayText = ""
  }
  
  private func calculate(for op: Operator?) {
    guard let newValue = Int(displayText) else { return }
    
    let result = (bufferOperator != nil)
      ? bufferOperator!.calculate(resultNum, newValue)
      : newValue
    clearAndSet(as: result, and: op)
  }
  
  private func addComma(to numString: String) -> String {
    guard let number = Int(numString) else { return "0" }
    
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    return formatter.string(from: NSNumber(integerLiteral: number)) ?? "0"
  }
}
