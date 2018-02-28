//
//  ViewController.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 25/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit
@IBDesignable
class LoginViewController: UIViewController {

    @IBOutlet weak var LoginButton: FacebookLoginButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onPressFacebookButton(_ sender: Any) {
        performSegue(withIdentifier: "FeaturedVC", sender: nil)
    }
    
    @IBAction func onPressLoginLater(_ sender: Any) {
        performSegue(withIdentifier: "FeaturedVC", sender: nil)
    }
    
    
}

