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
        
        //
        // Dress Category
        //
        
        let summerRed = Item(name: "Summer Red", price: 265, imageName: "summer-red", companyName: "Cotton-On", categeory: "Dresses", bigImage: "summer-red", previewImages: ["summer-red", "summer-red", "summer-red"])
        let jerseyDress = Item(name: "Jersey Dress", price: 295, imageName: "jersey-dress-preview-large", companyName: "H&M", categeory: "Dresses", bigImage: "summer-red", previewImages: ["summer-red", "summer-red", "summer-red"])
        let fireRed = Item(name: "Who's That Girl Midi", price: 390, imageName: "fire-red", companyName: "Alice McCall", categeory: "Dresses", bigImage: "summer-red", previewImages: ["summer-red", "summer-red", "summer-red"])
        let oceanBlue = Item(name: "Mercer Floral-Print", price: 295, imageName: "ocean-blue", companyName: "Zimmerman", categeory: "Dresses", bigImage: "summer-red", previewImages: ["summer-red", "summer-red", "summer-red"])
        
        
        var cat = [Category] ()
        cat.append(Category(title: "Bags", imageName: "feature-bag", items: []))
        cat.append(Category(title: "Dresses", imageName: "feature-dress", items: [summerRed,jerseyDress,fireRed,oceanBlue]))
        return cat
    }()
    
    public func getCategories () -> [Category] {
        return categories
    }
    
    public func getBanners () -> [Banner] {
        return banners
    }
    
    
}
