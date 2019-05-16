//
//  P15Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 07/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import NinetyNineSwiftProblems
import XCTest

class P15Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP1501() {
        var node = Node(1, 2, 3)
        var duplicateNode = node.duplicate(3)

        // Using from problem 3
        XCTAssertEqual(duplicateNode.count, 9, "Invalid value")
        XCTAssertEqual(duplicateNode[0], 1, "Invalid value")
        XCTAssertEqual(duplicateNode[1], 1, "Invalid value")
        XCTAssertEqual(duplicateNode[2], 1, "Invalid value")
        XCTAssertEqual(duplicateNode[3], 2, "Invalid value")
        XCTAssertEqual(duplicateNode[4], 2, "Invalid value")
        XCTAssertEqual(duplicateNode[5], 2, "Invalid value")
        XCTAssertEqual(duplicateNode[6], 3, "Invalid value")
        XCTAssertEqual(duplicateNode[7], 3, "Invalid value")
        XCTAssertEqual(duplicateNode[8], 3, "Invalid value")

        node = Node(1)
        duplicateNode = node.duplicate(4)

        // Using from problem 3
        XCTAssertEqual(duplicateNode.count, 4, "Invalid value")
        XCTAssertEqual(duplicateNode[0], 1, "Invalid value")
        XCTAssertEqual(duplicateNode[1], 1, "Invalid value")
        XCTAssertEqual(duplicateNode[2], 1, "Invalid value")
        XCTAssertEqual(duplicateNode[3], 1, "Invalid value")
    }

    func testP1502() {
        var list = [1, 2, 3]
        var duplicateList = list.duplicate(3)

        XCTAssertEqual(duplicateList.count, 9, "Invalid value")
        XCTAssertEqual(duplicateList[0], 1, "Invalid value")
        XCTAssertEqual(duplicateList[1], 1, "Invalid value")
        XCTAssertEqual(duplicateList[2], 1, "Invalid value")
        XCTAssertEqual(duplicateList[3], 2, "Invalid value")
        XCTAssertEqual(duplicateList[4], 2, "Invalid value")
        XCTAssertEqual(duplicateList[5], 2, "Invalid value")
        XCTAssertEqual(duplicateList[6], 3, "Invalid value")
        XCTAssertEqual(duplicateList[7], 3, "Invalid value")
        XCTAssertEqual(duplicateList[8], 3, "Invalid value")

        list = [1]
        duplicateList = list.duplicate(4)
        XCTAssertEqual(duplicateList.count, 4, "Invalid value")
        XCTAssertEqual(duplicateList[0], 1, "Invalid value")
        XCTAssertEqual(duplicateList[1], 1, "Invalid value")
        XCTAssertEqual(duplicateList[2], 1, "Invalid value")
        XCTAssertEqual(duplicateList[3], 1, "Invalid value")
    }
}
