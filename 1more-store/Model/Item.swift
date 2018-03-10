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
    private(set) public var companyName : String
    private(set) public var price : Double
    private(set) public var imageName : String
    private(set) public var category : String
    private(set) public var bigImage : String
    private(set) public var previewImages : [String]
    
    init(name : String, price : Double, imageName : String, companyName : String, categeory : String, bigImage : String, previewImages : [String]) {
        self.name = name
        self.price = price
        self.category = categeory
        self.imageName = imageName
        self.companyName = companyName
        self.bigImage = bigImage
        self.previewImages = previewImages
        
        let utils = Utilities()
        hashValue = Int(utils.hashCode(input: name))
    }
    
    
}
