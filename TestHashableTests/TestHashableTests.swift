//
//  TestHashableTests.swift
//  TestHashableTests
//
//  Created by Katsuhiko Terada on 2019/03/30.
//  Copyright © 2019 Katsuhiko Terada. All rights reserved.
//

import XCTest
@testable import TestHashable

class TestHashableTests: XCTestCase {

    func testMainBundle() {
        let val = HashableTestModel_Main()
        print(val.hashValue)
    }
    
    func testMainTestsBundle() {
        let val = HashableTestModel_MainTests()
        print(val.hashValue)
    }
}

open class HashableTestModel_MainTests: Hashable, Codable
{
    public var uniqueIdentifier: String
    
    public init()
    {
        self.uniqueIdentifier = String(arc4random())
    }
    
    // Equatable
    static public func ==(lhs: HashableTestModel_MainTests, rhs: HashableTestModel_MainTests) -> Bool
    {
        return true
    }
    
    public func hash(into hasher: inout Hasher)
    {
        hasher.combine(uniqueIdentifier)
    }
}

open class HashableTestModelChild_MainTests: HashableTestModel_MainTests
{
    
}
