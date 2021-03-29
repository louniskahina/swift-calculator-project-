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
    
    func calculateRate20or10(userValue : Double, rate : Double) -> Double {
        
        if userValue < 1 {
            return userValue * rate
        }
        else {
            return userValue / rate
        }
    }
    
    func displayAlert() {
        let alert = UIAlertController(title: "Error", message: "Please enter a number", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func calculate10(_ sender: UIButton) {
        if let numberTextFieldText = numberTextField.text, let numberToCalculate = Double(numberTextFieldText) {
             resultLabel.text = String(calculateRate20or10( userValue : numberToCalculate, rate : 10))
            }
        else {
            displayAlert()
        }
    }
    
    @IBAction func calculate20(_ sender: UIButton) {
        if let numberTextFieldText = numberTextField.text, let numberToCalculate = Double(numberTextFieldText) {
               resultLabel.text = String(calculateRate20or10(userValue: numberToCalculate, rate: 20))
            }
        else {
            displayAlert()
        }
    }
}

