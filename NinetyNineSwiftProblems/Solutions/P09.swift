//
//  P09.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

extension Node where T: Equatable {
    func pack() -> Node<Node<T>> {
        var root = self
        let rootNode = Node<Node<T>>(value: Node(value: root.value))

        var previousValue = root.value
        var currentNode = rootNode
        var currentValueNode = rootNode.value

        while let nextNode = root.next {
            if nextNode.value == previousValue {
                let newValueNode = Node(value: nextNode.value)

                currentValueNode.next = newValueNode
                currentValueNode = newValueNode
            } else {
                let newCurrentNode = Node<Node<T>>(value: Node(value: nextNode.value))
                currentNode.next = newCurrentNode

                currentNode = newCurrentNode
                currentValueNode = currentNode.value

                previousValue = nextNode.value
            }
            root = nextNode
        }

        return rootNode
    }
}

extension Array where Element: Equatable {
    // There is no `packed` version of the method as returned array
    // Element is of type: [Element]
    func pack() -> [[Element]] {
        var rootList = [[Element]]()
        guard !isEmpty else { return rootList }

        var previousValue = self[0]
        var innerList = [previousValue]

        for elm in self[1..<count] {
            if elm == previousValue {
                innerList.append(elm)
            } else {
                // Append current innerList to rootList
                // Array is type semantics so need to add
                // to root only after we finished mutating it
                rootList.append(innerList)

                previousValue = elm
                // New value, create a new inner list
                innerList = [elm]
            }
        }

        // Add the last pending innerlist once we run out of
        // elements
        rootList.append(innerList)
        return rootList
    }
}
