//
//  P19Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 19/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import NinetyNineSwiftProblems
import XCTest

class P19Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP1901() {
        let node = Node(1, 2, 3, 4, 5, 6, 7, 8)

        var rotateNode = node.rotate(3)
        XCTAssertEqual(rotateNode, Node(4, 5, 6, 7, 8, 1, 2, 3), "Invalid value")

        rotateNode = node.rotate(0)
        XCTAssertEqual(rotateNode, Node(1, 2, 3, 4, 5, 6, 7, 8), "Invalid value")

        rotateNode = node.rotate(-5)
        XCTAssertNil(rotateNode, "Invalid value")

        rotateNode = node.rotate(10)
        XCTAssertEqual(rotateNode, Node(3, 4, 5, 6, 7, 8, 1, 2), "Invalid value")
    }

    func testP1902() {
        let list = [1, 2, 3, 4, 5, 6, 7, 8]

        var rotateList = list.rotate(3)
        XCTAssertEqual(rotateList, [4, 5, 6, 7, 8, 1, 2, 3], "Invalid value")

        rotateList = list.rotate(0)
        XCTAssertEqual(rotateList, [1, 2, 3, 4, 5, 6, 7, 8], "Invalid value")

        rotateList = list.rotate(-5)
        XCTAssertEqual(rotateList, [1, 2, 3, 4, 5, 6, 7, 8], "Invalid value")

        rotateList = list.rotate(10)
        XCTAssertEqual(rotateList, [3, 4, 5, 6, 7, 8, 1, 2], "Invalid value")
    }
}
