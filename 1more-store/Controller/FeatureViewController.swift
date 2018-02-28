//
//  FeatureViewController.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 26/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

class FeatureViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var featureTableView : UITableView!
    @IBAction func testBtn(_ sender: Any) {
        performSegue(withIdentifier: "CategoryViewController", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        featureTableView.dataSource = self
        featureTableView.delegate = self
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let categoryVC = segue.destination as? CategoryViewController {
         
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count + 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 0) {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BannerCell") as? FeaturedHeaderTableViewCell {
            let banner = DataService.instance.getBanners()[indexPath.row]
            cell.populateCell(banner: banner)
            return cell
            } }
        else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? FeaturedTableViewCell{
            let category = DataService.instance.getCategories()[indexPath.row - 1]
            cell.populateCell(category: category)
            return cell
            }
        }
        return FeaturedTableViewCell()
    }
}
