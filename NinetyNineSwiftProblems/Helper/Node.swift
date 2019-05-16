//
//  Node.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

protocol NodeType {
    associatedtype Element
}

class Node<T>: NodeType {
    typealias Element = T

    var value: T
    var next: Node<T>?

    init(value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }

    convenience init(_ values: T...) {
        self.init(values)
    }

    init(_ values: [T]) {
        guard !values.isEmpty else {
            preconditionFailure("Empty list")
        }

        self.value = values[0]

        var next = self
        for elm in values[1..<values.count] {
            let nextNode = Node(value: elm)
            next.next = nextNode
            next = nextNode
        }
    }
}

extension Node: Equatable where T: Equatable {
    static func == (left: Node, right: Node) -> Bool {
        guard left.value == right.value else { return false }

        guard let leftNext = left.next,
              let rightNext = right.next else { return left.next == right.next }

        return leftNext == rightNext
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        var str = ["\(value)"]

        var root = self
        while let next = root.next {
            str.append("\(next.value)")
            root = next
        }
        return "Node(" + str.joined(separator: ", ") + ")"
    }
}
