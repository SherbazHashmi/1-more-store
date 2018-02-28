//
//  Banner.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 27/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import Foundation

struct Banner {
    var title : String
    var subTitle : String
    var imageName : String
    
    init(title : String, subTitle : String, imageName : String) {
        self.title = title
        self.subTitle = subTitle
        self.imageName = imageName
    }
}
