//
//  P09Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 07/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import NinetyNineSwiftProblems
import XCTest

class P09Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP0901() {
        var node = Node<Int>(1, 2, 3, 3, 4, 5, 5)!
        var packedNode = node.pack()
        var acceptNode = Node<Node<Int>>(Node(1)!, Node(2)!, Node(3, 3)!, Node(4)!, Node(5, 5)!)!
        XCTAssertEqual(packedNode, acceptNode, "Invalid compressed value")
        XCTAssertEqual(packedNode.count, 5, "Invalid compressed value")

        node = Node<Int>(3, 3, 3)!
        packedNode = node.pack()
        acceptNode = Node<Node<Int>>(Node(3, 3, 3)!)!
        XCTAssertEqual(packedNode, acceptNode, "Invalid compressed value")
        XCTAssertEqual(packedNode.count, 1, "Invalid compressed value")

        node = Node<Int>(3, 3, 3, 4, 4, 4)!
        packedNode = node.pack()
        acceptNode = Node<Node<Int>>(Node(3, 3, 3)!, Node(4, 4, 4)!)!
        XCTAssertEqual(packedNode, acceptNode, "Invalid compressed value")
        XCTAssertEqual(packedNode.count, 2, "Invalid compressed value")
    }

    func testP0902() {
        var list = [1, 2, 3, 3, 4, 5, 5]
        var packedList = list.pack()
        var acceptList = [[1], [2], [3, 3], [4], [5, 5]]
        XCTAssertEqual(packedList, acceptList, "Invalid compressed value")

        list = [3, 3, 3, 3]
        packedList = list.pack()
        acceptList = [[3, 3, 3, 3]]
        XCTAssertEqual(packedList, acceptList, "Invalid compressed value")
        XCTAssertEqual(packedList.count, 1, "Invalid compressed value")

        list = [3, 3, 3, 4, 4, 4]
        packedList = list.pack()
        acceptList = [[3, 3, 3], [4, 4, 4]]
        XCTAssertEqual(packedList, acceptList, "Invalid compressed value")
        XCTAssertEqual(packedList.count, 2, "Invalid compressed value")
    }
}
