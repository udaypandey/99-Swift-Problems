//
//  P19.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 16/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
import Foundation

extension Node {
    func rotate(_ rotateCount: Int) -> Node? {
        guard rotateCount > -1 else { return nil }
        guard rotateCount > 0 else { return self }

        let cnt = rotateCount % count

        var root: Node? = self
        var idx = 0
        var rootNode: Node?
        var rootLastNode: Node?

        var tailNode: Node?
        var tailLastNode: Node?

        while let nextNode = root {
            let newNode = Node(value: nextNode.value)

            if idx < cnt {
                // Create a separate linked list of the elements
                // that need to be moved to the end
                if tailNode == nil {
                    tailNode = newNode
                    tailLastNode = newNode
                } else {
                    tailLastNode?.next = newNode
                    tailLastNode = newNode
                }
            } else {
                if rootNode == nil {
                    rootNode = newNode
                    rootLastNode = newNode
                } else {
                    rootLastNode?.next = newNode
                    rootLastNode = newNode
                }
            }
            idx += 1
            root = nextNode.next
        }

        // Append nodes if any present
        if let tailNode = tailNode {
            rootLastNode?.next = tailNode
        }

        return rootNode
    }
}

extension Array {
    func rotate(_ rotateCount: Int) -> [Element] {
        // self[rotateCount...] + self[0..<rotateCount]
        // Swift range would be the best way to do this
        // Here we are building a new array instead

        guard rotateCount > 0 else { return self }
        let cnt = rotateCount % count

        var rotateList = [Element]()
        for elm in self[cnt...] {
            rotateList.append(elm)
        }
        for elm in self[0..<cnt] {
            rotateList.append(elm)
        }

        return rotateList
    }
}
