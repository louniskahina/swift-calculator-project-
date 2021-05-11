//
//  Treatments.swift
//  test
//
//  Created by Kahina Lounis on 16/04/2021.
//

import Foundation

class MathViewModel {
    
    var currentOperation = String()
    
    func clearCurrentOperation() {
        currentOperation = ""
    }
    
  /*  let clearCurrentOperation: (String) -> String = { currentOp in
        return  ""
     }*/
  
    func addElementToCurrentOperation(tag: Int) {
        let elements = ["0","1","2","3","4","5","6","7","8","9","+","-","/","*"]
        currentOperation.append(elements[tag])
    }
    
    func isValidFormula(testStr: String) -> Bool {
        let formuleRegEx = "[0-9]+([-+/*]?[0-9]+)*"
        let formuleTest = NSPredicate(format:"SELF MATCHES %@", formuleRegEx)
        let result = formuleTest.evaluate(with: testStr)
        return result
    }
    
    func calculate(operation: String) -> String? {
        if isValidFormula(testStr: operation) {
            let mathExpression = NSExpression(format: operation)
            guard let mathValue = mathExpression.expressionValue(with: nil, context: nil) as? Int else {
                //fatalError(" Error ")
                return nil
            }
            return String(mathValue)
        }
        return nil
    }
}
//When to use closures in swift?
// as listeners to observe value from the ViewModel
//
//


