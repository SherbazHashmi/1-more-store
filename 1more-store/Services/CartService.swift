//
//  CartService.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 27/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import Foundation

class CartService {
    public static let instance = CartService()
    
    private let cart = Cart ()
    
    public func getCart () -> Cart {
        return cart;
    }
    
    public func addItem (item : Item) {
        cart.addItem(item: item)
    }
    
    public func removeItem (item : Item) {
        cart.removeItem(item: item)
    }
    
    public func getNumberOfItems () -> Int {
        return cart.numberOfItems
    }
    
}
