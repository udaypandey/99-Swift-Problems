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
        let node = Node(1, 2, 3, 4, 5, 6, 7, 8)
        var slice = node.slice(from: 3, to: 6)

        XCTAssertEqual(slice?.count, 3, "Invalid value")
        XCTAssertEqual(slice, Node(4, 5, 6), "Invalid value")

        slice = node.slice(from: -5, to: -1)
        XCTAssertNil(slice, "Invalid value")

        slice = node.slice(from: -1, to: 20)
        XCTAssertEqual(slice?.count, 8, "Invalid value")
        XCTAssertEqual(slice, Node(1, 2, 3, 4, 5, 6, 7, 8), "Invalid value")

        slice = node.slice(from: 0, to: -6)
        XCTAssertNil(slice, "Invalid value")

        slice = node.slice(from: 13, to: 16)
        XCTAssertNil(slice, "Invalid value")
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
