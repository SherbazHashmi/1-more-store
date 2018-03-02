//
//  CategoryTableViewCell.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 27/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

class FeaturedTableViewCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var categoryName : UILabel!
    @IBOutlet weak var numberOfItems : UILabel!

    func populateCell (category : Category) {
        self.categoryName.text = category.title
        self.productImage.image = UIImage(named: category.imageName)
        self.numberOfItems.text = String(category.getItems().count) + " items"
    }
    
}

