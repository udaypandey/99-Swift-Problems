//
//  P08.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

extension Node where T: Equatable {
    func compress() -> Node {
        let newRootNode = Node(value: self.value)

        var root = self
        var previousValue = self.value
        var newNextNode = newRootNode
        while let next = root.next {
            if next.value != previousValue {
                let elm = Node(value: next.value)
                newNextNode.next = elm
                newNextNode = elm
                previousValue = next.value
            }
            root = next
        }

        return newRootNode
    }
}

extension Array where Element: Equatable {
    func compressed() -> Array {
        guard !isEmpty else { return [] }

        var newList = [Element]()

        var previousValue = self[0]
        newList.append(self[0])

        for elm in self[1..<count] where elm != previousValue {
            newList.append(elm)
            previousValue = elm
        }
        return newList
    }

    mutating func compress() {
        guard !isEmpty else { return }

        // One way to do this is to create a new array, copy values
        // over and then assign to self.

        // I will attempt by not creating a copy and change it in place

        var idx = 1
        var previousValue = self[0]
        while idx < count {
            let val = self[idx]
            if val == previousValue {
                self.remove(at: idx)
            } else {
                previousValue = val
                idx += 1
            }
        }
    }
}
