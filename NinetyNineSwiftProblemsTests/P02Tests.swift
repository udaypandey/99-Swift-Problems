//
//  P02Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import XCTest
@testable import NinetyNineSwiftProblems

class P02Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testP0101() {
        let node = Node<Int>(6)!
        XCTAssertEqual(node.secondLast, nil, "Invalid last value")
    }
    
    func testP0102() {
        let node = Node<Int>(5, 6)!
        XCTAssertEqual(node.secondLast, 5, "Invalid last value")
    }

    func testP0103() {
        let node = Node<Int>(6, 2, 3, 4, 9)!
        XCTAssertEqual(node.secondLast, 4, "Invalid last value")
    }
    
    func testP0104() {
        let list = [6, 2, 3, 4, 9]
        XCTAssertEqual(list.secondLast, 4, "Invalid last value")
    }
    
    func testP0105() {
        let list: [Int] = []
        XCTAssertEqual(list.secondLast, nil, "Invalid last value")
    }
}
