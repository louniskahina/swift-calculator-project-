//
//  calculatingTests.swift
//  test
//
//  Created by Kahina Lounis on 23/03/2021.
//

import XCTest
@testable import test


class calculatingTests : XCTestCase {
    
    func testCalculatingRate() {
        let vc = ViewController()
        let deviser10 = vc.calculateRate20or10(userValue: 100, rate : 10)
        XCTAssertEqual(10, deviser10)
        let multiply10 = vc.calculateRate20or10(userValue: -7, rate : 10)
        XCTAssertEqual(-70, multiply10)
        let deviser20 = vc.calculateRate20or10(userValue: 100, rate : 20)
        XCTAssertEqual(5, deviser20)
        let multiply20 = vc.calculateRate20or10(userValue: -7, rate : 20)
        XCTAssertEqual(-140, multiply20)
    }
}


