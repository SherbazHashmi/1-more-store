//
//  CategoryViewCollectionCell.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 1/3/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

class CategoryViewCollectionCell: UICollectionViewCell {
    @IBOutlet weak var image : UIImageView!
    @IBOutlet weak var companyName : UILabel!
    @IBOutlet weak var productName : UILabel!
    @IBOutlet weak var price : UILabel!
    
    
    func populateCell (imageName : String, companyName : String, productName : String, price : Double) {
        image.image = UIImage(named: imageName)
        self.companyName.text = companyName
        self.productName.text = productName
        self.price.text = "$" + String(price)
    }
    
}
