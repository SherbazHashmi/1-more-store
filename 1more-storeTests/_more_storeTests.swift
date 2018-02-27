//
//  _more_storeTests.swift
//  1more-storeTests
//
//  Created by Sherbaz Hashmi on 25/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import XCTest
@testable import _more_store

class _more_storeTests: XCTestCase {
    
    func testCharacterArray () {
        
        let utils = Utilities ()
        
        defaultCharArrTestCase(actual: "Hello", expected: ["H","e","l","l","o"], utils: utils)
        defaultCharArrTestCase(actual: "", expected: [], utils: utils)
        defaultCharArrTestCase(actual: "Testing With Spaces", expected: ["T","e","s","t","i","n","g", " ", "W", "i", "t", "h"," ", "S","p","a","c","e","s"], utils: utils)
    }
    
    func defaultCharArrTestCase (actual : String, expected : [Character], utils : Utilities) {
        let actualChars = utils.toChars(input: actual)
        XCTAssertTrue(actualChars == expected, "Expected " + String(expected) + " Actual " + String(actual))
    }
    
    

    
}
