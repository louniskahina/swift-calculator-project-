//
//  ViewController.swift
//  test
//
//  Created by Kahina Lounis on 22/03/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }

    func displayAlert() {
        let alert = UIAlertController(title: "Error", message: "Enter a valid mathematical formula to calculate", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

   func calculateFormula(formula : String) -> String{
   
        let mathExpression = NSExpression(format: formula)
            let mathValue = mathExpression.expressionValue(with: nil, context: nil) as? Int
    //forced unwrapping
            return String(mathValue!)
    }
    
    func addElementToFormula(element : String) {
        resultLabel.text!.append(element)
    }
    
        @IBAction func resultButton(_ sender: UIButton) {
    
        if let formule = resultLabel.text {
            if formule.isValidFormul{
                resultLabel.text = calculateFormula(formula: formule)
        }
          else {displayAlert()}
        }
        else {
            displayAlert()
        }
    }
    
    let elements = ["6","7","8","9","+","*","/","-","0","1","2","3","4","5"]
    @IBAction func tap0(_ sender: UIButton) {
        
        let tag = sender.tag
        switch tag {
        case 0:
            addElementToFormula(element: elements[8])
         //   resultLabel.text! += "0"
          
        case 1:
            addElementToFormula(element: elements[9])
         //   resultLabel.text! += "1"
           
        case 2:
            addElementToFormula(element: elements[10])
          //  resultLabel.text! += "2"
            
        case 3:
            addElementToFormula(element: elements[11])
          //  resultLabel.text! += "3"
 
        case 4:
           // resultLabel.text! += "4"
            addElementToFormula(element: elements[12])
          
        case 5:
           //resultLabel.text! += "5"
            addElementToFormula(element: elements[13])
            
        case 6:
            //  resultLabel.text! += "6"
            addElementToFormula(element: elements[0])
           
        case 7:
          //  resultLabel.text! += "7"
            addElementToFormula(element: elements[1])
            
        case 8:
            //  resultLabel.text! += "8"
            addElementToFormula(element: elements[2])
          
        case 9:
         //   resultLabel.text! += "9"
            addElementToFormula(element: elements[3])
           
        case 10:
         //   resultLabel.text! += "+"
            addElementToFormula(element: elements[4])
            
        case 11:
          //  resultLabel.text! += "-"
            addElementToFormula(element: elements[5])
          
        case 12:
            //   resultLabel.text! += "/"
            addElementToFormula(element: elements[6])
           
        default:
          //  resultLabel.text! += "*"
            addElementToFormula(element: elements[7])
           
        }
      
    }
    
    
    @IBAction func clearButton(_ sender: UIButton) {
        resultLabel.text! = ""
    }
    
}


///https://stackoverflow.com/questions/29089741/swift-string-formula-into-a-real-calculation

extension String {
    var isValidFormul: Bool {
        NSPredicate(format: "SELF MATCHES %@", "[0-9]+[-*/+]?[0-9]+").evaluate(with: self)
    }
}
