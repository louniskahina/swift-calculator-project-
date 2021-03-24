//
//  ViewController.swift
//  test
//
//  Created by Kahina Lounis on 22/03/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }
    func calculateRate( userValue : Double) -> Double {
       if userValue < 1 {
           return userValue * 10
       }
       else {
           return userValue / 10
       }
    }

    @IBAction func calculate(_ sender: UIButton) {
        if let numberTextFieldText = numberTextField.text, let numberToCalculate = Double(numberTextFieldText) {
             
               resultLabel.text = String(calculateRate( userValue : numberToCalculate))
            }
        }
    
}

