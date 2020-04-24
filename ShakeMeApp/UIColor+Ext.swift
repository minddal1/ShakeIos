//
//  UIColor+Ext.swift
//  ShakeMeApp
//
//  Created by admin on 24/04/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func random() -> UIColor {
        let red    =   CGFloat.random(in: 0...1)
        let green  =   CGFloat.random(in: 0...1)
        let blue   =   CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
