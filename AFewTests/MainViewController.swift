//
//  ViewController.swift
//  AFewTests
//
//  Created by Jerry on 25/9/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var theButton: UIButton!
    @IBOutlet weak var theLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        theButton.layer.cornerRadius = 10
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        theLabel.textColor = UIColor.red
    }
    

}

