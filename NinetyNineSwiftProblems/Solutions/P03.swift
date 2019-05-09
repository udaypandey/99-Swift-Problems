//
//  P03.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 05/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

extension Node {
    subscript(_ index: Int) -> T? {
        // Do not support negative index in this implementation
        guard index >= 0 else { return nil }

        var root = self
        var currentIndex = 0

        while currentIndex < index {
            if let next = root.next {
                root = next
            } else {
                return nil
            }
            currentIndex += 1
        }

        return root.value
    }
}

extension Array {
    func index$(_ index: Int) -> Element? {
        // Do not support negative index in this implementation
        guard index >= 0 else { return nil }
        guard index < count else { return nil }
        return self[index]
    }
}
