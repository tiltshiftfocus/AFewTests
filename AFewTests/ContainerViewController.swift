//
//  ContainerViewController.swift
//  AFewTests
//
//  Created by Jerry on 25/9/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class ContainerViewController: SlideMenuController {

    override func awakeFromNib() {
        SlideMenuOptions.animationDuration = 0.2
        SlideMenuOptions.contentViewScale = 0.999
        
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Main") {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Left") {
            self.leftViewController = controller
        }
        super.awakeFromNib()
    }

}
