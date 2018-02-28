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
    
    public static func addItem (item : Item) {
        
    }
}
