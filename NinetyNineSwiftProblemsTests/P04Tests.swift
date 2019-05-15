//
//  P04Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 06/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import NinetyNineSwiftProblems
import XCTest

class P04Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP0401() {
        let node = Node(1)!
        XCTAssertEqual(node.count, 1, "Invalid count")
    }

    func testP0402() {
        let node = Node(Array(0...10))!
        XCTAssertEqual(node.count, 11, "Invalid count")
    }
}
