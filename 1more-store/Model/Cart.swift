//
//  Cart.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 27/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import Foundation

class Cart {
    var numberOfItems : Int
    var totalPrice : Double
    // <Item, Price>
    var items : Dictionary<Item, Int>
    
    init() {
        numberOfItems = 0
        totalPrice = 0
        items = [:] 
    }
    
    
}
