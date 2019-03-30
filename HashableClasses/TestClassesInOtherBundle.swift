//
//  TestClasses.swift
//  HashableClasses
//
//  Created by Katsuhiko Terada on 2019/03/30.
//  Copyright © 2019 Katsuhiko Terada. All rights reserved.
//

import Foundation

open class HashableTestModel_Other: Codable
{
    public var uniqueIdentifier: String
    
    public init()
    {
        self.uniqueIdentifier = String(arc4random())
    }
    
    // Equatable
}

extension HashableTestModel_Other: Hashable
{
    public func hash(into hasher: inout Hasher)
    {
        hasher.combine(uniqueIdentifier)
    }
}

public func ==(lhs: HashableTestModel_Other, rhs: HashableTestModel_Other) -> Bool
{
    return true
}

open class HashableTestModelChild_Other: HashableTestModel_Other
{

}

