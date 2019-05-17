//
//  P18.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 16/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
import Foundation

extension Node {
//    func slice(from: Int, to: Int) -> Node {
//        // If index < 0, there wont be any elements in left
//        // If index >= count - 1, no elements in right
//        guard index < count else {
//            return (left: self, right: nil)
//        }
//
//        guard index > 0 else {
//            return (left: nil, right: self)
//        }
//
//        var root: Node = self
//
//        var currentIdx = 1
//        let leftNode = Node(value: root.value)
//        var rightNode: Node?
//        var currentNode = leftNode
//
//        while let next = root.next {
//            let newNode = Node(value: next.value)
//
//            if currentIdx == index {
//                // Switch to right node list
//                rightNode = newNode
//                currentNode = newNode
//            } else {
//                currentNode.next = newNode
//                currentNode = newNode
//            }
//
//            root = next
//            currentIdx += 1
//        }
//
//        return (leftNode, rightNode)
//    }
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

        for (idx, elm) in self.enumerated() {
            if idx >= fromIndex && idx < toIndex {
                ret.append(elm)
            }
        }

        return ret
    }
    // swiftlint:enable identifier_name
}
