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
        //how to test a void methode ?
        /*func testAddElement(){
            var text = "098"
            let addElement = vc.addElementToFormula(element: "001")
            
        }*/
        
    }
    
}


