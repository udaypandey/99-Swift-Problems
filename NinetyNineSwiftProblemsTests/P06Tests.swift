//
//  P06Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 07/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import NinetyNineSwiftProblems
import XCTest

class P06Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP0601() {
        var node = Node(1, 2, 3, 2, 1)
        XCTAssertTrue(node.palindrome, "Invalid state")

        node = Node(1, 2, 3, 3, 2, 1)
        XCTAssertTrue(node.palindrome, "Invalid state")

        node = Node(1, 2, 3, 3, 2)
        XCTAssertFalse(node.palindrome, "Invalid state")
    }

    func testP0602() {
        var list = [1, 2, 3, 2, 1]
        XCTAssertTrue(list.palindrome, "Invalid state")

        list = [1, 2, 3, 3, 2, 1]
        XCTAssertTrue(list.palindrome, "Invalid state")

        list = [1, 2, 3, 3, 2]
        XCTAssertFalse(list.palindrome, "Invalid state")
    }
}
