//
//  CategoryViewCollectionCell.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 1/3/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

class CategoryViewCell: UICollectionViewCell {
    @IBOutlet weak var image : UIImageView!
    @IBOutlet weak var companyName : UILabel!
    @IBOutlet weak var productName : UILabel!
    @IBOutlet weak var price : UILabel!
    
    var width : CGFloat = 0.0
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        widthAnchor.constraint(equalToConstant: width).isActive = true
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func populateCell (item : Item, width : CGFloat) {
        image.image = UIImage(named: item.imageName)
        self.companyName.text = item.companyName
        self.productName.text = item.name
        self.price.text = "$" + String(item.price)
        self.width = width
    }
    
}
