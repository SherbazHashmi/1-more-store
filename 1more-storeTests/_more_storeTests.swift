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
    
    func testAddCart() {
        let cart = Cart()
        defaultCartToStringTestCase(cart: cart, expected: "")
        
        cart.addItem(item: Item(name: "Dress", price: 300, imageName: "", companyName: "", categeory: "Dresses", bigImage: "", previewImages: []))
        defaultCartToStringTestCase(cart: cart, expected: "Item : Dress, Quantity : 1\n")
        defaultCartCountTestCase(cart: cart, expected: 1)
        
        cart.addItem(item: Item(name: "Suit", price: 250, imageName: "", companyName: "", categeory: "Suits", bigImage: "", previewImages: []))
        defaultCartToStringTestCase(cart: cart, expected: "Item : Dress, Quantity : 1\nItem : Suit, Quantity : 1\n")
        defaultCartCountTestCase(cart: cart, expected: 2)
        
        cart.addItem(item: Item(name: "Suit", price: 250, imageName: "", companyName: "", categeory: "Suits", bigImage: "", previewImages: []))
        defaultCartToStringTestCase(cart: cart, expected: "Item : Dress, Quantity : 1\nItem : Suit, Quantity : 2\n")
        defaultCartCountTestCase(cart: cart, expected: 3)
    }
    
    func testRemoveCart () {
        let cart = Cart()
        
        let itemOne = Item(name: "Dress", price: 300, imageName: "", companyName: "", categeory: "Dresses", bigImage: "", previewImages: [] )
        cart.addItem(item: itemOne)
        
        let itemTwo = Item(name: "Suit", price: 250, imageName: "", companyName: "", categeory: "Suits", bigImage: "", previewImages: [])
        cart.addItem(item: itemTwo)
        
        let itemThree = Item(name: "Suit", price: 250, imageName: "", companyName: "", categeory: "Suits", bigImage: "", previewImages: [])
        cart.addItem(item: itemThree)
        
        cart.removeItem(item: itemOne)
        defaultCartCountTestCase(cart: cart, expected: 2)
        defaultCartToStringTestCase(cart: cart, expected: "Item : Suit, Quantity : 2\n")
        
        cart.removeItem(item: itemTwo)
        defaultCartCountTestCase(cart: cart, expected: 1)
        defaultCartToStringTestCase(cart: cart, expected: "Item : Suit, Quantity : 1\n")
        
        cart.removeItem(item: itemThree)
        defaultCartCountTestCase(cart: cart, expected: 0)
        defaultCartToStringTestCase(cart: cart, expected: "")
        
        cart.removeItem(item: itemOne)
        defaultCartCountTestCase(cart: cart, expected: 0)
        defaultCartToStringTestCase(cart: cart, expected: "")

    }
    
    func defaultCartCountTestCase (cart : Cart, expected : Int) {
        let actualValue = cart.getNumberOfItems()
        XCTAssertTrue(actualValue == expected, "Expected " + String(expected) + " Actual " + String(actualValue))

    }
    
    func defaultCartToStringTestCase (cart : Cart, expected : String) {
        let actualString = cart.toString()
        XCTAssertTrue(actualString == expected, "Expected " + String(expected) + " Actual " + String(actualString))
    }
    
    func testToPrice () {
        defaultTestPrice(input: "", expected: "")
        defaultTestPrice(input: "1", expected: "$1")
        defaultTestPrice(input: "12", expected: "$12")
        defaultTestPrice(input: "123", expected: "$123")
        defaultTestPrice(input: "1234", expected: "$1,234")
        defaultTestPrice(input: "12345", expected: "$12,345")
        defaultTestPrice(input: "123456", expected: "$123,456")
        defaultTestPrice(input: "1234567", expected: "$1,234,567")
        defaultTestPrice(input: "12345678", expected: "12,345,678")
        defaultTestPrice(input: "123456789", expected: "$123,456,789")
        defaultTestPrice(input: "1234567890", expected: "$1,234,567,890")
    }
    
    func defaultTestPrice (input : String, expected : String) {
        let actualProcessed = input.toPrice()
        XCTAssertTrue(actualProcessed == expected, "Expected " + expected + "Actual " + actualProcessed)
    }
}

