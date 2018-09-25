//
//  LabelCustomised.swift
//  AFewTests
//
//  Created by Jerry on 25/9/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import UIKit

class LabelCustomised: UILabel {

    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }

}
