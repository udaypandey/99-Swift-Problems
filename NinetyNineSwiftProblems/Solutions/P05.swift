//
//  P05.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 07/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

extension Node {
    func reverse() -> Node {
        return self
    }
}

extension Array {
    // Not adding count for array as thats a primitive
    // method in the array implementation and a lot of other
    // methods depends on its native implementation.
    
    // A wrapper would do no good here
    mutating func reverse$() {
    }
    
    // We take a simple approach and return an array of
    // reversed elements instead of returning a ReverseCollection
    // like swift library implementation
    func reversed$() -> Array {
        return self
    }
}
