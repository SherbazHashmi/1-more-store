//
//  CategoryHeaderTableViewCell.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 27/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

class FeaturedHeaderTableViewCell: UITableViewCell {
    @IBOutlet weak var bannerImage : UIImageView!
    @IBOutlet weak var headerLabel : UILabel!
    @IBOutlet weak var subheaderLabel : UILabel!
    
    func populateCell (banner : Banner) {
        self.bannerImage.image = UIImage(named: banner.imageName)
        headerLabel.text = banner.title
        subheaderLabel.text = banner.subTitle
    }
}
