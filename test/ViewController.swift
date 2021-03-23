//
//  ViewController.swift
//  test
//
//  Created by Kahina Lounis on 22/03/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numToCalculate: UITextField!
    
    @IBOutlet weak var result: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: UIButton) {
        
        if Double(numToCalculate.text!)! < 1 {
            result.text = "\(Double(numToCalculate.text!)!*10)"
        
        }
        else {
            result.text = "\(Double(numToCalculate.text!)!/10)"
            
        }
        
        
    }
    
}

