//
//  P03Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 05/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import NinetyNineSwiftProblems
import XCTest

class P03Tests: XCTestCase {
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testP0301() {
        let node = Node<Int>(Array(0...10))!
        XCTAssertNil(node[11], "Invalid last value")
        XCTAssertEqual(node[0], 0, "Invalid last value")
        XCTAssertEqual(node[5], 5, "Invalid last value")
    }

    func testP0302() {
        let list = Array(0...10)
        XCTAssertNil(list.index$(11), "Invalid last value")
        XCTAssertEqual(list.index$(0), 0, "Invalid last value")
        XCTAssertEqual(list.index$(5), 5, "Invalid last value")
    }
}
