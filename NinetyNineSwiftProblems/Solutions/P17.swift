//
//  P17.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 16/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
import Foundation

extension Node {
    func split(at index: Int) -> (left: Node?, right: Node?) {
        // If index < 0, there wont be any elements in left
        // If index >= count - 1, no elements in right
        guard index < count else {
            return (left: self, right: nil)
        }

        guard index > 0 else {
            return (left: nil, right: self)
        }

        var root: Node = self

        var currentIdx = 1
        let leftNode = Node(value: root.value)
        var rightNode: Node?
        var currentNode = leftNode

        while let nextNode = root.next {
            let newNode = Node(value: nextNode.value)

            if currentIdx == index {
                // Switch to right node list
                rightNode = newNode
                currentNode = newNode
            } else {
                currentNode.next = newNode
                currentNode = newNode
            }

            root = nextNode
            currentIdx += 1
        }

        return (leftNode, rightNode)
    }
}

extension Array {
    func split(at index: Int) -> (left: [Element], right: [Element]) {
        // If index < 0, there wont be any elements in left
        // If index >= count - 1, no elements in right
        guard index < count else {
            return (left: self, right: [])
        }

        guard index > 0 else {
            return (left: [], right: self)
        }

        var left = [Element]()
        var right = [Element]()

        for (idx, elm) in self.enumerated() {
            if idx < index {
                left.append(elm)
            } else {
                right.append(elm)
            }
        }

        return (left: left, right: right)
    }
}
