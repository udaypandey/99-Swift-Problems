//
//  P01Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import XCTest
@testable import NinetyNineSwiftProblems

class P01Tests: XCTestCase {
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testP0101() {
        let node = Node<Int>(6)!
        XCTAssertEqual(node.last, 6, "Invalid last value")
    }

    func testP0102() {
        let node = Node<Int>(6, 2, 3, 4, 9)!
        XCTAssertEqual(node.last, 9, "Invalid last value")
    }
}
