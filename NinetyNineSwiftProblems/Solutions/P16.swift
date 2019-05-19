//
//  P16.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 16/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
import Foundation

extension Node {
    func drop(_ index: Int) -> Node {
        // If drop is less than 2, thats kind of invalid input as it will
        // drop everything
        guard index > 1 else {
            preconditionFailure("index should be greater than 1")
        }

        var root = self
        let rootNode = Node(value: root.value)

        var currentNode = rootNode
        var currentIdx = 1

        while let nextNode = root.next {
            currentIdx += 1
            root = nextNode

            if currentIdx % index == 0 {
                continue
            }

            let newNode = Node(value: nextNode.value)
            currentNode.next = newNode
            currentNode = newNode
        }

        return rootNode
    }
}

extension Array {
    func drop(_ index: Int) -> [Element] {
        var rootList = [Element]()
        guard !isEmpty else { return rootList }

        for (idx, elm) in self.enumerated() {
            if (idx + 1) % index == 0 {
                continue
            }

            rootList.append(elm)
        }

        return rootList
    }
}
