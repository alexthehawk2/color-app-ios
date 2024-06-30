//
//  UIColor+Ext.swift
//  colors-app
//
//  Created by Abir Dey on 30/06/24.
//

import UIKit

extension UIColor{
    static func random() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}
