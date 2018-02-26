//
//  Category.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 27/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import Foundation

class Category {
    private(set) public var title : String
    private(set) public var imageName : String
    private(set) public var numberOfItems : Int
    private var items : [Item]
    
    
    init(title : String, imageName : String, items :  [Item]) {
        self.title = title
        self.imageName = imageName
        self.items = items
        numberOfItems = 0
    }
    
    func addItem (item : Item) {
        items.append(item)
    }
    
    func getItems () -> [Item] {
        return items
    }
}
