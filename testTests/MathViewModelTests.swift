//
//  calculatingTests.swift
//  test
//
//  Created by Kahina Lounis on 23/03/2021.
//

import XCTest
@testable import test


class MathViewModelTests : XCTestCase {
    let mathViewModel = MathViewModel()
    let mathViewController = MathViewController()
    
    var currentOperation = "testtotest"
    
    func testCalculate() {
        let add = mathViewModel.calculate(operation: "5+5")
        XCTAssertEqual("10", add)
        
        let minus = mathViewModel.calculate(operation: "5-5")
        XCTAssertEqual("0", minus)
        
        let divide = mathViewModel.calculate(operation: "5/5")
        XCTAssertEqual("1", divide)
        
        let multiply = mathViewModel.calculate(operation: "5*5")
        XCTAssertEqual("25", multiply)
        
        let multiplyAdd = mathViewModel.calculate(operation: "5*5+1")
        XCTAssertEqual("26", multiplyAdd)
        
        let divideMinus = mathViewModel.calculate(operation: "30-5/5")
        XCTAssertEqual("29", divideMinus)        
    }
    
    func testIsValidFormula() {
        let validationFormula = mathViewModel.isValidFormula(testStr: "5*5+1")
        XCTAssertEqual(true, validationFormula)
        
        let validationFormula2 = mathViewModel.isValidFormula(testStr: "5*5+1+")
        XCTAssertEqual(false, validationFormula2)
        
        let validationFormula3 = mathViewModel.isValidFormula(testStr: "+")
        XCTAssertEqual(false, validationFormula3)
        
        let validationFormula4 = mathViewModel.isValidFormula(testStr: "*8")
        XCTAssertEqual(false, validationFormula4)
        
        let validationFormula5 = mathViewModel.isValidFormula(testStr: "987++")
        XCTAssertEqual(false, validationFormula5)
        
        let validationFormula6 = mathViewModel.isValidFormula(testStr: "")
        XCTAssertEqual(false, validationFormula6)
        
        let validationFormula7 = mathViewModel.isValidFormula(testStr: "4+-9")
        XCTAssertEqual(false, validationFormula7)
    }
    
    func testclearButtonAction() {
        mathViewModel.clearCurrentOperation()
        XCTAssertEqual("", mathViewModel.currentOperation)
            
    }
    
    func testAddElementToCurrentOperation() {
        mathViewModel.addElementToCurrentOperation(tag: 13)
        print(mathViewModel.currentOperation.last!)
        XCTAssertEqual("*", mathViewModel.currentOperation.last!)
    }
  
}

