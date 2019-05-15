//
//  P10.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

extension Node where T: Equatable {
    func encode() -> Node<(Int, T)> {
        var root = self.pack()

        // Using count and subscript which was written earlier to avoid
        // duplicating the logic here
        let val = (root.value.count, root.value[0]!)
        let rootNode = Node<(Int, T)>(value: val)
        var currentNode = rootNode

        while let next = root.next {
            let val = (next.value.count, next.value[0]!)
            let newCurrentNode = Node<(Int, T)>(value: val)

            currentNode.next = newCurrentNode
            currentNode = newCurrentNode
            root = next
        }

        return rootNode
    }
}

extension Array where Element: Equatable {
    func encode() -> [(Int, Element)] {
        let packedList = self.pack()
        var encodedList = [(Int, Element)]()

        packedList.forEach { elms in
            encodedList.append((elms.count, elms[0]))
        }

        return encodedList
    }
}
