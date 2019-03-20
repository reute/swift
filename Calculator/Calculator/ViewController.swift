//
//  ViewController.swift
//  Calculator
//
//  Created by reute on 20.03.19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculatorLabel: UILabel!
    
    var isTypingNumber = false
    var fistNumber = 0.0
    var secondNumber = 0.0
    var operation = " "
    
    @IBAction func restartButton(_ sender: UIButton) {
        calculatorLabel.text = "0"
        fistNumber = 0
        secondNumber = 0
    }
    
    @IBAction func numberTapped(_ sender: UIButton) {
        let number = sender.currentTitle!
        
        if isTypingNumber {
            calculatorLabel.text = calculatorLabel.text! + number
        } else {
            calculatorLabel.text = number
            isTypingNumber = true
        }
    }
    
    @IBAction func calculationTapped(_ sender: UIButton) {
        isTypingNumber = false
        fistNumber = Double(calculatorLabel.text!)!
        operation = sender.currentTitle!
    }
    
    @IBAction func equalsTapped(_ sender: UIButton) {
        isTypingNumber = false
        var result = 0.0
        secondNumber = Double(calculatorLabel.text!)!
        if operation == "+" {
            result = fistNumber + secondNumber
        } else if operation == "-" {
            result = fistNumber - secondNumber
        } else if operation == "÷" {
            result = fistNumber / secondNumber
        } else if operation == "x" {
            result = fistNumber * secondNumber
        }
        calculatorLabel.text = String(result)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

