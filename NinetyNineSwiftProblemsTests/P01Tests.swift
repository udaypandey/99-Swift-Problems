//
//  P01Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import NinetyNineSwiftProblems
import XCTest

class P01Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP0101() {
        let node = Node(6)!
        XCTAssertEqual(node.last, 6, "Invalid last value")
    }

    func testP0102() {
        let node = Node(6, 2, 3, 4, 9)!
        XCTAssertEqual(node.last, 9, "Invalid last value")
    }

    func testP0103() {
        let list = [6, 2, 3, 4, 9]
        XCTAssertEqual(list.last$, 9, "Invalid last value")
    }

    func testP0104() {
        let list: [Int] = []
        XCTAssertNil(list.last$, "Invalid last value")
    }
}
