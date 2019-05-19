//
//  P18.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 16/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
import Foundation

extension Node {
    // swiftlint:disable identifier_name
    func slice(from: Int, to: Int) -> Node? {
        let cnt = count
        let fromIndex = from < 0 ? 0 : (from <= cnt ? from : cnt)
        let toIndex = to < 0 ? fromIndex : (to <= cnt ? to : cnt)

        var root: Node? = self
        var idx = 0
        var rootNode: Node?
        var currentNode: Node?

        while let nextNode = root {
            if fromIndex ..< toIndex ~= idx {
                let newNode = Node(value: nextNode.value)

                if rootNode == nil {
                    rootNode = newNode
                    currentNode = newNode
                } else {
                    currentNode?.next = newNode
                    currentNode = newNode
                }
            }

            idx += 1
            root = root?.next
        }

        return rootNode
    }
    // swiftlint:enable identifier_name
}

extension Array {
    // swiftlint:disable identifier_name
    func slice(from: Int, to: Int) -> [Element] {
        // Swift already provides Range which is a superior 
        // way to access the slices. But will implement from
        // scratch by actually copying the slice into a new array

        // Ideally should sanitize the ranges, but the logic below
        // would return empty array for invalid ranges and take
        // care of basic invalid slices. But a fix for slice(5, -1)
        // would require more validation and more logic to support
        // negative indices. Not doing all of that for this implementation
        let cnt = count
        let fromIndex = from < 0 ? 0 : (from <= cnt ? from : cnt)
        let toIndex = to < 0 ? fromIndex : (to <= cnt ? to : cnt)

        var ret = [Element]()

        for (idx, elm) in self.enumerated() where fromIndex ..< toIndex ~= idx {
            ret.append(elm)
        }

        return ret
    }
    // swiftlint:enable identifier_name
}
