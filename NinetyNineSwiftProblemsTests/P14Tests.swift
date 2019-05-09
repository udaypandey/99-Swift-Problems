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

    func testP0501() {
        var node = Node<Int>(1, 2, 3)!
        var reverseNode = node.reverse()

        // Using from problem 3
        XCTAssertEqual(reverseNode[0], 3, "Invalid value")
        XCTAssertEqual(reverseNode[1], 2, "Invalid value")
        XCTAssertEqual(reverseNode[2], 1, "Invalid value")

        node = Node<Int>(1)!
        reverseNode = node.reverse()
        XCTAssertEqual(reverseNode[0], 1, "Invalid value")
    }

    func testP0502() {
        var list = [1, 2, 3]
        list.reverse$()

        XCTAssertEqual(list[0], 3, "Invalid value")
        XCTAssertEqual(list[1], 2, "Invalid value")
        XCTAssertEqual(list[2], 1, "Invalid value")

        list = [1]
        list.reverse$()
        XCTAssertEqual(list[0], 1, "Invalid value")
    }

    func testP0503() {
        var list = [1, 2, 3]
        var reversedList = list.reversed$()

        XCTAssertEqual(reversedList[0], 3, "Invalid value")
        XCTAssertEqual(reversedList[1], 2, "Invalid value")
        XCTAssertEqual(reversedList[2], 1, "Invalid value")

        list = [1]
        reversedList = list.reversed$()
        XCTAssertEqual(reversedList[0], 1, "Invalid value")
    }
}
