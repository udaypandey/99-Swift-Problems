//
//  P04.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 06/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

extension Node {
    var count: Int {
        var root = self
        var cnt = 1
        
        while let next = root.next {
            root = next
            cnt += 1
        }
        
        return cnt
    }
}

extension Array {
    // Not adding count for array as thats a primitive
    // method in the array implementation and a lot of other
    // methods depends on its native implementation.
    
    // A wrapper would do no good here
}
