//
//  Node.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

class Node<T> {
    var value: T
    var next: Node<T>?

    init(value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }

    convenience init?(_ values: T...) {
        self.init(values)
    }

    init?(_ values: [T]) {
        guard !values.isEmpty else { return nil }

        self.value = values[0]

        var next = self
        for elm in values[1..<values.count] {
            let nextNode = Node(value: elm)
            next.next = nextNode
            next = nextNode
        }
    }
}
