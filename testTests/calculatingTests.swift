//
//  calculatingTests.swift
//  test
//
//  Created by Kahina Lounis on 23/03/2021.
//

import XCTest
@testable import test


class calculatingTests : XCTestCase {

    func testCalculateFormula() {
        let vc = ViewController()
        //calculateFormula
        let add = vc.calculateFormula(formula: "5+5")
        XCTAssertEqual("10", add)
        
        let minus = vc.calculateFormula(formula: "5-5")
        XCTAssertEqual("0", minus)
        
        let divide = vc.calculateFormula(formula: "5/5")
        XCTAssertEqual("1", divide)
        
        let multiply = vc.calculateFormula(formula: "5*5")
        XCTAssertEqual("25", multiply)
        
        let multiplyAdd = vc.calculateFormula(formula: "5*5+1")
        XCTAssertEqual("26", multiplyAdd)
        
        let divideMinus = vc.calculateFormula(formula: "30-5/5")
        XCTAssertEqual("29", divideMinus)
        
        //validationFormula
        let validationFormula = vc.isValidFormula(testStr: "5*5+1")
        XCTAssertEqual(true, validationFormula)
        
        let validationFormula2 = vc.isValidFormula(testStr: "5*5+1+")
        XCTAssertEqual(false, validationFormula2)
        
        let validationFormula3 = vc.isValidFormula(testStr: "+")
        XCTAssertEqual(false, validationFormula3)
        
        let validationFormula4 = vc.isValidFormula(testStr: "*8")
        XCTAssertEqual(false, validationFormula4)
        
        let validationFormula5 = vc.isValidFormula(testStr: "987++")
        XCTAssertEqual(false, validationFormula5)
        
        let validationFormula6 = vc.isValidFormula(testStr: "")
        XCTAssertEqual(false, validationFormula6)
        
        let validationFormula7 = vc.isValidFormula(testStr: "4+-9")
        XCTAssertEqual(false, validationFormula7)
    }
    
}


