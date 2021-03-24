//
//  calculatingTests.swift
//  test
//
//  Created by Kahina Lounis on 23/03/2021.
//

import XCTest
@testable import test


class calculatingTests : XCTestCase {
    
    func testCalculatingRate(){
        
        let vc = ViewController()
        let deviser10 = vc.calculateRate(userValue: 100)
        XCTAssertEqual(10, deviser10)
        let multiply10 = vc.calculateRate(userValue: -7)
        XCTAssertEqual(-70, multiply10)
    }
   

}

