//
//  P05.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

extension Node {
    func reverse() -> Node {
        var root = self
        var newRoot = Node(value: root.value)

        while let elm = root.next {
            newRoot = Node(value: elm.value, next: newRoot)
            root = elm
        }

        return newRoot
    }
}

extension Array {
    // Not using any inbuilt functionality apart from count
    mutating func reverse$() {
        var lastIdx = count - 1
        var idx = 0

        while idx < lastIdx {
            let tmp = self[idx]
            self[idx] = self[lastIdx]
            self[lastIdx] = tmp
            idx += 1
            lastIdx -= 1
        }
    }

    // We take a simple approach and return an array of
    // reversed elements instead of returning a ReverseCollection
    // like swift library implementation

    // Not using any inbuilt functionality apart from count
    func reversed$() -> Array {
        let length = count

        var newArray = [Element]()
        newArray.reserveCapacity(length)
        var idx = length - 1
        while idx >= 0 {
            newArray.append(self[idx])
            idx -= 1
        }
        return newArray
    }
}
