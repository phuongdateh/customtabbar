//
//  CircleView.swift
//  CustomTabShapeTest
//
//  Created by DoanDuyPhuong on 5/21/20.
//  Copyright © 2020 pmw. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class CircleView: UIView {
    @IBInspectable
    var isCircle:Bool = false
    @IBInspectable
    var borderColorCustom:UIColor = UIColor.clear
    @IBInspectable
    var borderWidthCustom:CGFloat = 0.0
    override func layoutSubviews() {
        super.layoutSubviews()
        if isCircle {
            self.layer.masksToBounds = true
            self.layer.cornerRadius = self.frame.width / 2
        }
        self.layer.borderColor = borderColorCustom.cgColor
        self.layer.borderWidth = borderWidthCustom
    }
}
