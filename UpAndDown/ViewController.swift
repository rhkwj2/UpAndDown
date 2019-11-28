//
//  ViewController.swift
//  UpAndDown
//
//  Created by Kim Yeon Jeong on 2019/11/26.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputNumberTextField: UITextField!
    
    @IBOutlet weak var gobutton: UIButton!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var minimumLabel: UILabel!
    
    @IBOutlet weak var maximumLabel: UILabel!
    
    var finalNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup the game
        finalNumber = Int(arc4random_uniform(50))
        minimumLabel.text = String(1)
        maximumLabel.text = String(50)
        
        
        // user can start to input the number
    }
        
    // 3. when user input the number, the inputNumberTextField changed
    
    // 4. when user press go, the "Up or Down" label changed, and "min" or "max" changed
    @IBAction func goButtonPressed(_ sender: Any) {
        inputNumberTextField.resignFirstResponder()
        
        let text: String = inputNumberTextField.text!
        let number = Int(text)!
        
        let max = Int(maximumLabel.text!)!
        let min = Int(minimumLabel.text!)!
    
        /*
         1. compare the final number and the input number
         2. if the final number is greater, then 
        */
         
        if number > max {
            hintLabel.text = "\(text)  You Drink"
        } else if number < min {
             hintLabel.text = "\(text) You Drink"
        } else if number > finalNumber {
            maximumLabel.text = "\(text)"
            hintLabel.text = "\(text) Down！"
         } else if number < finalNumber {
            minimumLabel.text = "\(text)"
            hintLabel.text = "\(text) Up！"
         } else {
            hintLabel.text = "Great"
         }
         
        
        
//        inputNumberTextField = inputNumberTextField.text
    }
    
    
}
