//
//  P08Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 07/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import NinetyNineSwiftProblems
import XCTest

class P08Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP0801() {
        var node = Node(1, 2, 3, 3, 3, 3, 3, 3, 4, 5)!
        var compressedNode = node.compress()
        XCTAssertEqual(compressedNode, Node(1, 2, 3, 4, 5)!, "Invalid compressed value")

        node = Node(3, 3, 3, 3, 3, 3, 3, 3)!
        compressedNode = node.compress()
        XCTAssertEqual(compressedNode, Node(3)!, "Invalid compressed value")

        node = Node(3)!
        compressedNode = node.compress()
        XCTAssertEqual(compressedNode, Node(3)!, "Invalid compressed value")
    }

    func testP0802() {
        var list = [1, 2, 3, 3, 3, 3, 3, 3, 4, 5]
        var compressedList = list.compressed()
        XCTAssertEqual(compressedList, [1, 2, 3, 4, 5], "Invalid compressed value")

        list = [3, 3, 3, 3, 3, 3]
        compressedList = list.compressed()
        XCTAssertEqual(compressedList, [3], "Invalid compressed value")

        list = [3]
        compressedList = list.compressed()
        XCTAssertEqual(compressedList, [3], "Invalid compressed value")

        list = []
        compressedList = list.compressed()
        XCTAssertEqual(compressedList, [], "Invalid compressed value")
    }

    func testP0803() {
        var list = [1, 2, 3, 3, 3, 3, 3, 3, 4, 5]
        list.compress()
        XCTAssertEqual(list, [1, 2, 3, 4, 5], "Invalid compressed value")

        list = [3, 3, 3, 3, 3, 3]
        list.compress()
        XCTAssertEqual(list, [3], "Invalid compressed value")

        list = [3]
        list.compress()
        XCTAssertEqual(list, [3], "Invalid compressed value")

        list = []
        list.compress()
        XCTAssertEqual(list, [], "Invalid compressed value")

        list = [1, 2, 3, 3, 3, 3, 3, 3, 4, 5, 5, 6, 7, 7, 7, 8, 9, 9, 10, 10, 11]
        list.compress()
        XCTAssertEqual(list, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "Invalid compressed value")
    }
}
