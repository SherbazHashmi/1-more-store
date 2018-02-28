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
    
    func addItem (item : Item) {
        let currentNumberOfItems = numberOfItems
        numberOfItems = currentNumberOfItems + 1
        print("Adding " + item.name)
        let isContained = items.keys.contains(item)
        
        if isContained {
            print("Item " + item.name + " is already in cart")
            var currentQuantity = items[item]
            items[item]! = currentQuantity! + 1
            print ("Item " + item.name + "Quantity : " +  String(items[item]!))
            
        } else {
            items[item] = 1
        }
    }
    
    func removeItem (item : Item) {
        let currentNumberOfItems = numberOfItems
        numberOfItems = currentNumberOfItems - 1
        
        let isContained = items.keys.contains(item)
        
        if isContained {
            if items[item] == 1 {
                items.removeValue(forKey: item)
            } else {
                let currentQuantity = items[item]
                items[item] = currentQuantity! - 1
            }
        } else {
            // TODO : Throw Error Code
        }
    }
    
    func getItems () -> Dictionary<Item, Int> {
        return items
    }
    
    func toString () -> String {
        var output : String = ""
        for item in items {
            let name  = item.key.name
            let quantity = String (item.value)
            let currentOutput = output
            output = currentOutput +  "Item : " + name +  ", Quantity : " + quantity + "\n"
        }
        
        return output
    }
    
    func getNumberOfItems () -> Int {
        return numberOfItems
    }
    
    
}
