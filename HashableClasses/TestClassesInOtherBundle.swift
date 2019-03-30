//
//  TestClasses.swift
//  HashableClasses
//
//  Created by Katsuhiko Terada on 2019/03/30.
//  Copyright © 2019 Katsuhiko Terada. All rights reserved.
//

import Foundation

open class HashableTestModel_Other: Hashable, Codable
{
    public var uniqueIdentifier: String
    
    public init()
    {
        self.uniqueIdentifier = String(arc4random())
    }
    
    // Equatable
    static public func ==(lhs: HashableTestModel_Other, rhs: HashableTestModel_Other) -> Bool
    {
        return true
    }
    
    public func hash(into hasher: inout Hasher)
    {
        hasher.combine(uniqueIdentifier)
    }
}

open class HashableTestModelChild_Other: HashableTestModel_Other
{
    
}

