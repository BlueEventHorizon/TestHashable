//
//  TestHashableTests2.swift
//  TestHashableTests
//
//  Created by Katsuhiko Terada on 2019/03/30.
//  Copyright © 2019 Katsuhiko Terada. All rights reserved.
//

import XCTest
@testable import HashableClasses

class TestHashableTests2: XCTestCase {
    
    func testOtherBundle() {
        let val = HashableTestModel_Other()
        print(val.hashValue)
    }
}


