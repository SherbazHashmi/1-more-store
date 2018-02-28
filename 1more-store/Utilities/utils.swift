//
//  utils.swift
//  1more-store
//
//  Created by Sherbaz Hashmi on 26/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//
// HashCode pulled utilised from Java.

import UIKit

extension UIColor {
    static func rgb (red : CGFloat, green : CGFloat, blue : CGFloat, alpha : CGFloat) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
        }
}


class Utilities {
    
    public func hashCode (input : String) -> Int  {
        var hashCode : Int = 0
        if input.count > 0  {
            let inputCharacters  = toChars(input: input)
            var i = 0
            while  (i < input.count) {
                for character in inputCharacters {
                    let currentHashCode = hashCode
                    hashCode = 31 * currentHashCode + inputCharacters.index(of: character)!
                }
                i = i + 1
            }
        }
        return hashCode
    }
    
    public func toChars (input : String) -> [Character] {
        if(input.count > 0) {
            if(input.count == 1) {
                return [input.first!]
            } else {
                return [input.first!] + toChars(input:String(input.dropFirst()))
            }
        } else {
            return []
        }
    }
    
}
