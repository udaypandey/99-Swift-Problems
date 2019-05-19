//
//  P06.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

extension Node where T: Equatable {
    var palindrome: Bool {
        var root = self

        var arr = [root.value]
        while let nextNode = root.next {
            arr.append(nextNode.value)
            root = nextNode
        }

        // Leverages array palindrome implementation
        // instead of doing it again just for Node
        return arr.palindrome
    }
}

extension Array where Element: Equatable {
    var palindrome: Bool {
        var startIdx = 0
        var endIdx = count - 1

        while startIdx < endIdx {
            if self[startIdx] != self[endIdx] {
                return false
            }

            startIdx += 1
            endIdx -= 1
        }
        return true
    }
}
