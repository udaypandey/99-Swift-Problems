//
//  P01.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

extension Node {
    var last: T {
        var current = self
        
        while let elem = current.next {
            current = elem
        }
        return current.value
    }
}
