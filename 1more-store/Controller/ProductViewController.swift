//
//  ProductViewController.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 26/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var companyNameLabel : UILabel!
    @IBOutlet weak var priceLabel : UILabel!
    @IBOutlet weak var bigImage : UIImageView!
    @IBOutlet weak var previewImageViewOne : UIImageView!
    @IBOutlet weak var previewImageViewTwo : UIImageView!
    @IBOutlet weak var previewImageViewThree : UIImageView!
    

    var item = Item(name: "placeholder", price: 0, imageName: "placeholder", companyName: "placeholder", categeory: "placeholder", bigImage : "", previewImages: [])
    
    @IBAction func addToCart(_ sender: Any) {
        CartService.instance.addItem(item: item)
    }
    
    func itemInit (item : Item) {
        self.item = item;
    }
    
    func populateViewController (item : Item ) {
        print("Parsed Item : " + item.name)
        nameLabel.text = item.name
        companyNameLabel.text = item.companyName
        priceLabel.text = String(item.price).toPrice()
        bigImage.image = UIImage(named: item.bigImage)
        
        let previewImageViews = [previewImageViewOne, previewImageViewTwo, previewImageViewThree]

        for i in 0 ... previewImageViews.count - 1 {
            previewImageViews[i]?.image = UIImage(named : item.previewImages[i])
        }
        
         navigationItem.title = item.name
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateViewController(item: item)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
