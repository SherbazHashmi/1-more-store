//
//  CategoryViewController.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 26/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

@IBOutlet weak var itemCollectionView : UICollectionView!
    
    public var category = Category(title: "Placeholder", imageName: "placeholder", items: [])

    func initItems (category : Category)  {
        self.category = category
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        itemCollectionView.dataSource = self
        itemCollectionView.delegate = self
        navigationItem.title = String(category.title)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return category.getItems().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as? CategoryViewCell  {
            let item = category.getItems()[indexPath.row]
            cell.populateCell(item: item)
            return cell
        }
        return CategoryViewCell()
    }
}
