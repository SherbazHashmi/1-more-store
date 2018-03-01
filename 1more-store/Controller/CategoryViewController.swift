//
//  CategoryViewController.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 26/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

   // @IBOutlet weak var itemCollectionView : UICollection
    private(set) public var category = Category(title: "Placeholder", imageName: "placeholder", items: [])
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
