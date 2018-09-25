//
//  ThreeViewController.swift
//  AFewTests
//
//  Created by Jerry on 25/9/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var queryDelegate: QRQueryDelegate?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var returnedResult: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.layer.borderColor = UIColor.black.cgColor
        resultLabel.layer.borderWidth = 2.0
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openQRScanner" {
            let destVC = segue.destination as! QRScannerController
            destVC.delegate = self
        }
    }
    
    @IBAction func shareResult(_ sender: UIButton) {
        if let string = returnedResult {
            let activityViewCtrl = UIActivityViewController(activityItems: [string], applicationActivities: nil)
            activityViewCtrl.popoverPresentationController?.sourceView = self.view
            present(activityViewCtrl, animated: true, completion: nil)
        } else {
            print("NO DATA")
        }
        
    }
}

extension ThirdViewController: QRQueryDelegate {
    
    func onReceiveQRData(returnVal: String) {
        returnedResult = returnVal
        resultLabel.text = "Share Result: \(returnVal)"
    }
}
