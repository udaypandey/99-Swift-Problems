//
//  P18Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 17/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import NinetyNineSwiftProblems
import XCTest

class P18Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP1801() {
//        var node = Node(1, 2, 3, 4, 5, 6, 7, 8)
//        var (left, right) = node.split(at: 3)
//
//        XCTAssertEqual(left?.count, 3, "Invalid value")
//        XCTAssertEqual(left, Node(1, 2, 3), "Invalid value")
//        XCTAssertEqual(right?.count, 5, "Invalid value")
//        XCTAssertEqual(right, Node(4, 5, 6, 7, 8), "Invalid value")
//
//        node = Node(1, 2)
//        (left, right) = node.split(at: 1)
//        XCTAssertEqual(left?.count, 1, "Invalid value")
//        XCTAssertEqual(left, Node(1), "Invalid value")
//        XCTAssertEqual(right?.count, 1, "Invalid value")
//        XCTAssertEqual(right, Node(2), "Invalid value")
//
//        node = Node(1, 2, 3, 4, 5, 6, 7, 8)
//        (left, right) = node.split(at: 10)
//        XCTAssertEqual(left?.count, 8, "Invalid value")
//        XCTAssertEqual(left, Node(1, 2, 3, 4, 5, 6, 7, 8), "Invalid value")
//        XCTAssertNil(right, "Invalid value")
//
//        node = Node(1, 2, 3, 4, 5, 6, 7, 8)
//        (left, right) = node.split(at: 0)
//        XCTAssertNil(left, "Invalid value")
//        XCTAssertEqual(right?.count, 8, "Invalid value")
//        XCTAssertEqual(right, Node(1, 2, 3, 4, 5, 6, 7, 8), "Invalid value")
    }

    func testP1802() {
        let list = [1, 2, 3, 4, 5, 6, 7, 8]

        var slice = list.slice(from: 3, to: 6)
        XCTAssertEqual(slice.count, 3, "Invalid value")
        XCTAssertEqual(slice, [4, 5, 6], "Invalid value")

        slice = list.slice(from: -5, to: -1)
        XCTAssertEqual(slice.count, 0, "Invalid value")
        XCTAssertEqual(slice, [], "Invalid value")

        slice = list.slice(from: -1, to: 20)
        XCTAssertEqual(slice.count, 8, "Invalid value")
        XCTAssertEqual(slice, [1, 2, 3, 4, 5, 6, 7, 8], "Invalid value")

        slice = list.slice(from: 0, to: -6)
        XCTAssertEqual(slice.count, 0, "Invalid value")
        XCTAssertEqual(slice, [], "Invalid value")

        slice = list.slice(from: 13, to: 16)
        XCTAssertEqual(slice.count, 0, "Invalid value")
        XCTAssertEqual(slice, [], "Invalid value")
    }
}
