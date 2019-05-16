//
//  P14Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 07/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import NinetyNineSwiftProblems
import XCTest

class P14Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP1401() {
        var node = Node(1, 2, 3)
        var duplicateNode = node.duplicate()

        // Using from problem 3
        XCTAssertEqual(duplicateNode.count, 6, "Invalid value")
        XCTAssertEqual(duplicateNode[0], 1, "Invalid value")
        XCTAssertEqual(duplicateNode[1], 1, "Invalid value")
        XCTAssertEqual(duplicateNode[2], 2, "Invalid value")
        XCTAssertEqual(duplicateNode[3], 2, "Invalid value")
        XCTAssertEqual(duplicateNode[4], 3, "Invalid value")
        XCTAssertEqual(duplicateNode[5], 3, "Invalid value")

        node = Node(1)
        duplicateNode = node.duplicate()

        // Using from problem 3
        XCTAssertEqual(duplicateNode.count, 2, "Invalid value")
        XCTAssertEqual(duplicateNode[0], 1, "Invalid value")
        XCTAssertEqual(duplicateNode[1], 1, "Invalid value")
    }

    func testP1402() {
        var list = [1, 2, 3]
        var duplicateList = list.duplicate()

        XCTAssertEqual(duplicateList.count, 6, "Invalid value")
        XCTAssertEqual(duplicateList[0], 1, "Invalid value")
        XCTAssertEqual(duplicateList[1], 1, "Invalid value")
        XCTAssertEqual(duplicateList[2], 2, "Invalid value")
        XCTAssertEqual(duplicateList[3], 2, "Invalid value")
        XCTAssertEqual(duplicateList[4], 3, "Invalid value")
        XCTAssertEqual(duplicateList[5], 3, "Invalid value")

        list = [1]
        duplicateList = list.duplicate()
        XCTAssertEqual(duplicateList.count, 2, "Invalid value")
        XCTAssertEqual(duplicateList[0], 1, "Invalid value")
        XCTAssertEqual(duplicateList[1], 1, "Invalid value")
    }
}
