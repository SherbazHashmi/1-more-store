//
//  FacebookLoginButton.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 26/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit
@IBDesignable
class FacebookLoginButton: RoundedButton {

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        customiseView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customiseView()
    }
    
    override func customiseView() {
        super.customiseView()
        setTitle("Login With Facebook", for: .normal)
        backgroundColor = UIColor.rgb(red: 255, green: 255, blue: 255, alpha: 1)
        setTitleColor(UIColor.rgb(red: 26, green: 59, blue: 134, alpha: 1), for: .normal)
    }
    
}
