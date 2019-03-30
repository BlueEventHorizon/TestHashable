//
//  TestClassesInMainBundle.swift
//  TestHashable
//
//  Created by Katsuhiko Terada on 2019/03/30.
//  Copyright © 2019 Katsuhiko Terada. All rights reserved.
//

import Foundation

open class HashableTestModel_Main: Codable
{
    public var uniqueIdentifier: String
    
    public init()
    {
        self.uniqueIdentifier = String(arc4random())
    }
    
    // Equatable
    static public func ==(lhs: HashableTestModel_Main, rhs: HashableTestModel_Main) -> Bool
    {
        return true
    }
}

extension HashableTestModel_Main: Hashable
{
    public func hash(into hasher: inout Hasher)
    {
        hasher.combine(uniqueIdentifier)
    }
}

open class HashableTestModelChild_Main: HashableTestModel_Main
{
    
}

