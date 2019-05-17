//
//  P16Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 16/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import NinetyNineSwiftProblems
import XCTest

class P16Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP1601() {
        var node = Node(1, 2, 3, 4, 5, 6, 7, 8)
        var duplicateNode = node.drop(3)

        XCTAssertEqual(duplicateNode.count, 6, "Invalid value")
        XCTAssertEqual(duplicateNode[0], 1, "Invalid value")
        XCTAssertEqual(duplicateNode[1], 2, "Invalid value")
        XCTAssertEqual(duplicateNode[2], 4, "Invalid value")
        XCTAssertEqual(duplicateNode[3], 5, "Invalid value")
        XCTAssertEqual(duplicateNode[4], 7, "Invalid value")
        XCTAssertEqual(duplicateNode[5], 8, "Invalid value")

        node = Node(1, 2)
        duplicateNode = node.drop(2)
        XCTAssertEqual(duplicateNode.count, 1, "Invalid value")
        XCTAssertEqual(duplicateNode[0], 1, "Invalid value")

        node = Node(1, 2, 3, 4, 5, 6, 7, 8)
        duplicateNode = node.drop(2)
        XCTAssertEqual(duplicateNode.count, 4, "Invalid value")
        XCTAssertEqual(duplicateNode[0], 1, "Invalid value")
        XCTAssertEqual(duplicateNode[1], 3, "Invalid value")
        XCTAssertEqual(duplicateNode[2], 5, "Invalid value")
        XCTAssertEqual(duplicateNode[3], 7, "Invalid value")
    }

    func testP1602() {
        var list = [1, 2, 3, 4, 5, 6, 7, 8]
        var duplicateList = list.drop(3)

        XCTAssertEqual(duplicateList.count, 6, "Invalid value")
        XCTAssertEqual(duplicateList[0], 1, "Invalid value")
        XCTAssertEqual(duplicateList[1], 2, "Invalid value")
        XCTAssertEqual(duplicateList[2], 4, "Invalid value")
        XCTAssertEqual(duplicateList[3], 5, "Invalid value")
        XCTAssertEqual(duplicateList[4], 7, "Invalid value")
        XCTAssertEqual(duplicateList[5], 8, "Invalid value")

        list = [1, 2]
        duplicateList = list.drop(2)
        XCTAssertEqual(duplicateList.count, 1, "Invalid value")
        XCTAssertEqual(duplicateList[0], 1, "Invalid value")

        list = [1, 2, 3, 4, 5, 6, 7, 8]
        duplicateList = list.drop(2)
        XCTAssertEqual(duplicateList.count, 4, "Invalid value")
        XCTAssertEqual(duplicateList[0], 1, "Invalid value")
        XCTAssertEqual(duplicateList[1], 3, "Invalid value")
        XCTAssertEqual(duplicateList[2], 5, "Invalid value")
        XCTAssertEqual(duplicateList[3], 7, "Invalid value")
    }
}
