//
//  ViewController.swift
//  test
//
//  Created by Kahina Lounis on 22/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func clearButton(_ sender: UIButton) {
        resultLabel.text! = ""
    }
    
    @IBAction func resultButton(_ sender: UIButton) {
        if let formule = resultLabel.text { 
            if isValidFormula(testStr: formule) {
                resultLabel.text = calculateFormula(formula: formule)
                return
            }
        }
        displayErrorAlert()
    }

    let elements = ["0","1","2","3","4","5","6","7","8","9","+","*","/","-"]
    @IBAction func tapButton(_ sender: UIButton) {
      //  tag : 0, 1,2,3,4,5,6,7,8,9,10,11,12,13
            addElementToFormula(element: elements[sender.tag])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func displayErrorAlert() {
        let alert = UIAlertController(title: "Error", message: "Enter a valid mathematical formula to calculate", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    func calculateFormula(formula : String) -> String {
        let mathExpression = NSExpression(format: formula)
        guard let mathValue = mathExpression.expressionValue(with: nil, context: nil) as? Int else {
        fatalError(" Error ")
        }
            return String(mathValue)
    }
    
    func addElementToFormula(element : String) {
        resultLabel.text!.append(element)
    }
    
    func isValidFormula(testStr:String) -> Bool {
                let formuleRegEx = "[0-9]+([-+/*]?[0-9]+)*"
                let formuleTest = NSPredicate(format:"SELF MATCHES %@", formuleRegEx)
                let result = formuleTest.evaluate(with: testStr)
                return result
            }
}


///https://stackoverflow.com/questions/29089741/swift-string-formula-into-a-real-calculation

