//
//  LaterLoginButton.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 26/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit
@IBDesignable
class LaterLoginButton: RoundedButton {

    override func prepareForInterfaceBuilder() {
        customiseView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customiseView()
    }
    
    override func customiseView() {
        super.customiseView()
        
        setTitle("Login Later", for: .normal)
        setTitleColor(UIColor.white, for: .normal)
        backgroundColor = UIColor.rgb(red: 24, green: 32, blue: 117, alpha: 1)
    }

}
