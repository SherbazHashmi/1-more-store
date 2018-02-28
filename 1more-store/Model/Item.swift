//
//  Item.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 27/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//


import Foundation

class Item : Hashable , Equatable {
    var hashValue: Int
    
    static func ==(lhs: Item, rhs: Item) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    private(set) public var name : String
    private(set) public var price : Double
    private(set) public var category : Category
    
    init(name : String, price : Double, categeory : Category) {
        self.name = name
        self.price = price
        self.category = categeory
        let utils = Utilities()
        hashValue = utils.hashCode(input: name)
    }
    
    
}
