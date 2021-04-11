//
//  ViewController.swift
//  test
//
//  Created by Kahina Lounis on 22/03/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel2.text = ""
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
    
        @IBAction func resultButton(_ sender: UIButton) {
    
        if let formule = resultLabel2.text {
            if formule.isValidFormul{
                resultLabel2.text = calculateFormula(formula: formule)
        }
          else {displayAlert()}
        }
        else {
            displayAlert()
        }
    }
    
    //mettre un tableau ou une list avec diff opérations
   /* @IBAction func addOperation(_ sender: UIButton) {
    //mettre ça comme methode et à tester
        resultLabel2.text! += "+"
    }
    
    @IBAction func minusOperation(_ sender: UIButton) {
        resultLabel2.text! += "-"
        
    }
    
    @IBAction func devideOperation(_ sender: UIButton) {
        resultLabel2.text! += "/"
    }
    
    @IBAction func multiplyOperation(_ sender: UIButton) {
        resultLabel2.text! += "*"
    }
    
   

    @IBAction func tap1(_ sender: UIButton) {
        resultLabel2.text! += "1"
    }
    
    @IBAction func tap2(_ sender: UIButton) {
        resultLabel2.text! += "2"
    }
    
    @IBAction func tap3(_ sender: UIButton) {
        resultLabel2.text! += "3"
    }
    
    @IBAction func tap4(_ sender: UIButton) {
        resultLabel2.text! += "4"
    }
    
    @IBAction func tap5(_ sender: UIButton) {
        resultLabel2.text! += "5"
    }
    
    @IBAction func tap6(_ sender: UIButton) {
        resultLabel2.text! += "6"
    }
    
    @IBAction func tap7(_ sender: UIButton) {
        resultLabel2.text! += "7"
    }
    
    @IBAction func tap8(_ sender: UIButton) {
        resultLabel2.text! += "8"
    }
    
    @IBAction func tap9(_ sender: UIButton) {
        resultLabel2.text! += "9"
    }*/
    
    @IBAction func tap0(_ sender: UIButton) {
        
        let tag = sender.tag
        switch tag {
        case 0:
            resultLabel2.text! += "0"
          
        case 1:
            resultLabel2.text! += "1"
           
        case 2:
            resultLabel2.text! += "2"
            
        case 3:
            resultLabel2.text! += "3"
 
        case 4:
            resultLabel2.text! += "4"
          
        case 5:
           resultLabel2.text! += "5"
            
        case 6:
            resultLabel2.text! += "6"
           
        case 7:
            resultLabel2.text! += "7"
            
        case 8:
            resultLabel2.text! += "8"
          
        case 9:
            resultLabel2.text! += "9"
           
        case 10:
            resultLabel2.text! += "+"
            
        case 11:
            resultLabel2.text! += "-"
          
        case 12:
            resultLabel2.text! += "/"
           
        default:
            resultLabel2.text! += "*"
           
        }
      
    }
    
    
    @IBAction func clearButton(_ sender: UIButton) {
        resultLabel2.text! = ""
    }
    
}


///https://stackoverflow.com/questions/29089741/swift-string-formula-into-a-real-calculation

extension String {
    var isValidFormul: Bool {
        NSPredicate(format: "SELF MATCHES %@", "[0-9]+[-*/+]?[0-9]+").evaluate(with: self)
    }
}
