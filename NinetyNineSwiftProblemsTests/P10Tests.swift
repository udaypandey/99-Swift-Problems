//
//  P10Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 07/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import NinetyNineSwiftProblems
import XCTest

class P10Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP1001() {
        var node = Node(1, 2, 3, 3, 4, 5, 5)
        var encodedNode: Node<(Int, Int)> = node.encode()
        var acceptNode: Node<(Int, Int)> = Node((1, 1), (1, 2), (2, 3), (1, 4), (2, 5))
        XCTAssertEqual(encodedNode.count, 5, "Invalid encoded value")
        XCTAssertEqual(encodedNode[0]?.0, acceptNode[0]?.0, "Invalid encoded value")
        XCTAssertEqual(encodedNode[0]?.1, acceptNode[0]?.1, "Invalid encoded value")
        XCTAssertEqual(encodedNode[1]?.0, acceptNode[1]?.0, "Invalid encoded value")
        XCTAssertEqual(encodedNode[1]?.1, acceptNode[1]?.1, "Invalid encoded value")
        XCTAssertEqual(encodedNode[2]?.0, acceptNode[2]?.0, "Invalid encoded value")
        XCTAssertEqual(encodedNode[2]?.1, acceptNode[2]?.1, "Invalid encoded value")
        XCTAssertEqual(encodedNode[3]?.0, acceptNode[3]?.0, "Invalid encoded value")
        XCTAssertEqual(encodedNode[3]?.1, acceptNode[3]?.1, "Invalid encoded value")
        XCTAssertEqual(encodedNode[4]?.0, acceptNode[4]?.0, "Invalid encoded value")
        XCTAssertEqual(encodedNode[4]?.1, acceptNode[4]?.1, "Invalid encoded value")

        node = Node(3, 3, 3)
        encodedNode = node.encode()
        acceptNode = Node((3, 3))
        XCTAssertEqual(encodedNode.count, 1, "Invalid encoded value")
        XCTAssertEqual(encodedNode[0]?.0, acceptNode[0]?.0, "Invalid encoded value")
        XCTAssertEqual(encodedNode[0]?.1, acceptNode[0]?.1, "Invalid encoded value")

        node = Node(3, 3, 3, 4, 4, 4)
        encodedNode = node.encode()
        acceptNode = Node((3, 3), (3, 4))
        XCTAssertEqual(encodedNode.count, 2, "Invalid encoded value")
        XCTAssertEqual(encodedNode[0]?.0, acceptNode[0]?.0, "Invalid encoded value")
        XCTAssertEqual(encodedNode[0]?.1, acceptNode[0]?.1, "Invalid encoded value")
        XCTAssertEqual(encodedNode[1]?.0, acceptNode[1]?.0, "Invalid encoded value")
        XCTAssertEqual(encodedNode[1]?.1, acceptNode[1]?.1, "Invalid encoded value")
    }

    func testP1002() {
        var list = [1, 2, 3, 3, 4, 5, 5]
        var encodedList = list.encode()
        var acceptList = [(1, 1), (1, 2), (2, 3), (1, 4), (2, 5)]
        XCTAssertEqual(encodedList[0].0, acceptList[0].0, "Invalid encoded value")
        XCTAssertEqual(encodedList[0].1, acceptList[0].1, "Invalid encoded value")
        XCTAssertEqual(encodedList[1].0, acceptList[1].0, "Invalid encoded value")
        XCTAssertEqual(encodedList[1].1, acceptList[1].1, "Invalid encoded value")
        XCTAssertEqual(encodedList[2].0, acceptList[2].0, "Invalid encoded value")
        XCTAssertEqual(encodedList[2].1, acceptList[2].1, "Invalid encoded value")
        XCTAssertEqual(encodedList[3].0, acceptList[3].0, "Invalid encoded value")
        XCTAssertEqual(encodedList[3].1, acceptList[3].1, "Invalid encoded value")
        XCTAssertEqual(encodedList[4].0, acceptList[4].0, "Invalid encoded value")
        XCTAssertEqual(encodedList[4].1, acceptList[4].1, "Invalid encoded value")

        list = [3, 3, 3, 3]
        encodedList = list.encode()
        acceptList = [(4, 3)]
        XCTAssertEqual(encodedList.count, 1, "Invalid encoded value")
        XCTAssertEqual(encodedList[0].0, acceptList[0].0, "Invalid encoded value")
        XCTAssertEqual(encodedList[0].1, acceptList[0].1, "Invalid encoded value")

        list = [3, 3, 3, 4, 4, 4]
        encodedList = list.encode()
        acceptList = [(3, 3), (3, 4)]
        XCTAssertEqual(encodedList.count, 2, "Invalid encoded value")
        XCTAssertEqual(encodedList[0].0, acceptList[0].0, "Invalid encoded value")
        XCTAssertEqual(encodedList[0].1, acceptList[0].1, "Invalid encoded value")
        XCTAssertEqual(encodedList[1].0, acceptList[1].0, "Invalid encoded value")
        XCTAssertEqual(encodedList[1].1, acceptList[1].1, "Invalid encoded value")
    }
}
