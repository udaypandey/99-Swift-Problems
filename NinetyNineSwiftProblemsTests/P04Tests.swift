//
//  P04Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 06/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import XCTest
@testable import NinetyNineSwiftProblems

class P04Tests: XCTestCase {
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testP0401() {
        let node = Node<Int>(1)!
        XCTAssertEqual(node.count, 1, "Invalid count")
    }
    
    func testP0402() {
        let node = Node<Int>(Array(0...10))!
        XCTAssertEqual(node.count, 11, "Invalid count")
    }
}
