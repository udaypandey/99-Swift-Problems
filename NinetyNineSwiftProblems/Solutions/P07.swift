//
//  P07.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

extension Node where Element: NodeType {
    func flatten() -> Node {
        return self
    }
}

extension Array where Element: Sequence {
    func flatten() -> [Element.Element] {
        var rootList = [Element.Element]()

        for elm in self {
            rootList.append(contentsOf: elm)
        }
        return rootList
    }
}
