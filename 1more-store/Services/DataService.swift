//
//  DataService.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 27/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import Foundation

class DataService {
    public static let instance = DataService()
    
    private let banners : [Banner] = {
        var banner = [Banner] ()
        banner.append(Banner(title: "New Arrival", subTitle: "FALL WINTER 2017-18 FASHION SHOW", imageName: "feature-banner"))
        return banner
    }()
    
    private var categories : [Category] = {
        var cat = [Category] ()
        cat.append(Category(title: "Bags", imageName: "feature-bag", items: []))
        cat.append(Category(title: "Dresses", imageName: "feature-dress", items: []))
        return cat
    }()
    
    public func getCategories () -> [Category] {
        return categories
    }
    
    public func getBanners () -> [Banner] {
        return banners
    }
    
    
}
