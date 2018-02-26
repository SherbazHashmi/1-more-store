//
//  utils.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 26/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

extension UIView {
    func rgb (red : CGFloat, green : CGFloat, blue : CGFloat, alpha : CGFloat) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
        }
    
    func rbgBackgroundColor (red : CGFloat, green : CGFloat, blue : CGFloat, alpha : CGFloat) {
        backgroundColor = rgb(red: red, green: blue, blue: blue, alpha: alpha)
    }
    
}
