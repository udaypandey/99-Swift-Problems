//
//  P17Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 17/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import NinetyNineSwiftProblems
import XCTest

class P17Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP1701() {
        var node = Node(1, 2, 3, 4, 5, 6, 7, 8)
        var (left, right) = node.split(at: 3)

        print(left)
        print(right)
        XCTAssertEqual(left?.count, 3, "Invalid value")
        XCTAssertEqual(left, Node(1, 2, 3), "Invalid value")
        XCTAssertEqual(right?.count, 5, "Invalid value")
        XCTAssertEqual(right, Node(4, 5, 6, 7, 8), "Invalid value")

        node = Node(1, 2)
        (left, right) = node.split(at: 1)
        XCTAssertEqual(left?.count, 1, "Invalid value")
        XCTAssertEqual(left, Node(1), "Invalid value")
        XCTAssertEqual(right?.count, 1, "Invalid value")
        XCTAssertEqual(right, Node(2), "Invalid value")

        node = Node(1, 2, 3, 4, 5, 6, 7, 8)
        (left, right) = node.split(at: 10)
        XCTAssertEqual(left?.count, 8, "Invalid value")
        XCTAssertEqual(left, Node(1, 2, 3, 4, 5, 6, 7, 8), "Invalid value")
        XCTAssertNil(right, "Invalid value")

        node = Node(1, 2, 3, 4, 5, 6, 7, 8)
        (left, right) = node.split(at: 0)
        XCTAssertNil(left, "Invalid value")
        XCTAssertEqual(right?.count, 8, "Invalid value")
        XCTAssertEqual(right, Node(1, 2, 3, 4, 5, 6, 7, 8), "Invalid value")
    }

    func testP1702() {
        var list = [1, 2, 3, 4, 5, 6, 7, 8]
        var (left, right) = list.split(at: 3)

        XCTAssertEqual(left.count, 3, "Invalid value")
        XCTAssertEqual(left, [1, 2, 3], "Invalid value")
        XCTAssertEqual(right.count, 5, "Invalid value")
        XCTAssertEqual(right, [4, 5, 6, 7, 8], "Invalid value")

        list = [1, 2]
        (left, right) = list.split(at: 1)
        XCTAssertEqual(left.count, 1, "Invalid value")
        XCTAssertEqual(left, [1], "Invalid value")
        XCTAssertEqual(right.count, 1, "Invalid value")
        XCTAssertEqual(right, [2], "Invalid value")

        list = [1, 2, 3, 4, 5, 6, 7, 8]
        (left, right) = list.split(at: 10)
        XCTAssertEqual(left.count, 8, "Invalid value")
        XCTAssertEqual(left, [1, 2, 3, 4, 5, 6, 7, 8], "Invalid value")
        XCTAssertEqual(right, [], "Invalid value")

        list = [1, 2, 3, 4, 5, 6, 7, 8]
        (left, right) = list.split(at: 0)
        XCTAssertEqual(left, [], "Invalid value")
        XCTAssertEqual(right.count, 8, "Invalid value")
        XCTAssertEqual(right, [1, 2, 3, 4, 5, 6, 7, 8], "Invalid value")
    }
}
