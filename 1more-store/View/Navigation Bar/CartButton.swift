//
//  CartButton.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 28/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

class CartButton: UIBarButtonItem {
    override func awakeFromNib() {
        switch (CartService.instance.getNumberOfItems()) {
        case 0 :
            title = "1"
            break
        default :
            image = UIImage(named: generateBagImageName())
            break
        }
    }
    
    
    func generateBagImageName () -> String {
        let numberOfItems = CartService.instance.getNumberOfItems()
        if numberOfItems > 10 {
            return "bag-10+"
        } else {
            return "bag-" + String(numberOfItems)
        }
    }
}
