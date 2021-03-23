//
//  ViewController.swift
//  test
//
//  Created by Kahina Lounis on 22/03/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberToCalculate: UITextField!
    
    @IBOutlet weak var calculatingResult: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: UIButton) {
        
        if Double(numberToCalculate.text!) != nil {
        if Double(numberToCalculate.text!)! < 1 {
            calculatingResult.text = "\(Double(numberToCalculate.text!)!*10)"
        
        }
        else {
            calculatingResult.text = "\(Double(numberToCalculate.text!)!/10)"
            
        }
        
        
    }
    }
}

