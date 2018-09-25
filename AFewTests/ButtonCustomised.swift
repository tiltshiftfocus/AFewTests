//
//  ButtonCustomised.swift
//  AFewTests
//
//  Created by Jerry on 25/9/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import UIKit

@IBDesignable

class ButtonCustomised: UIButton {
    
    var shadowOffsetWidth: Int? = 0
    var shadowOffsetHeight: Int? = 2
    var shadowColor: UIColor? = .black
    var shadowOpacity: Float? = 0.3
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 10
        self.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        self.titleLabel?.numberOfLines = 10
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 10)
        layer.masksToBounds = false
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth!, height: shadowOffsetHeight!);
        layer.shadowOpacity = shadowOpacity!
        layer.shadowPath = shadowPath.cgPath
    }
    
    override func contentRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 8, dy: 9)
    }
    
    
    

}
