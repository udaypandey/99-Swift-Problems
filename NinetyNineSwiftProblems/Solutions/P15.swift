//
//  P15.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

extension Node {
    func duplicate(_ count: Int) -> Node {
        var root = self

        let generatedNodes = genNodes(value: root.value, count: count)
        let rootNode = generatedNodes.first
        var currentNode = generatedNodes.last

        while let nextNode = root.next {
            let (fNode, sNode) = genNodes(value: nextNode.value, count: count)
            currentNode.next = fNode
            currentNode = sNode

            root = nextNode
        }

        return rootNode
    }

    // Took out the duplication logic out in a private method
    private func genNodes(value: T, count: Int) -> (first: Node, last: Node) {
        let lastNode = Node(value: value)
        var currentNode = lastNode
        for _ in 1..<count {
            let newNode = Node(value: value, next: currentNode)
            currentNode = newNode
        }
        return (currentNode, lastNode)
    }
}

extension Array {
    func duplicate(_ count: Int) -> [Element] {
        var rootList = [Element]()
        guard !isEmpty else { return rootList }

        for elm in self {
            for _ in 0..<count {
                rootList.append(elm)
            }
        }

        return rootList
    }
}
