//
//  LeftDrawerControllerViewController.swift
//  AFewTests
//
//  Created by Jerry on 25/9/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import UIKit

enum LeftMenu: Int {
    case one = 0
    case two
    case three
}

class TableCell: UITableViewCell {
    override func layoutSubviews() {
        self.layer.backgroundColor = UIColor.clear.cgColor
    }
}

class LeftDrawerController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var menuListTable: UITableView!
    
    var storyboardOne: UIViewController!
    var storyboardTwo: UIViewController!
    var storyboardThree: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuListTable.delegate = self
        menuListTable.dataSource = self
        menuListTable.separatorStyle = .none
        menuListTable.rowHeight = UITableViewAutomaticDimension
        menuListTable.estimatedRowHeight = 50.0
        menuListTable.backgroundColor = UIColor.clear
        
        storyboardOne = storyboard?.instantiateViewController(withIdentifier: "Main") as! MainViewController
        storyboardTwo = storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondViewController
        storyboardThree = storyboard?.instantiateViewController(withIdentifier: "Third") as! ThirdViewController
        
    }
    
    func changeController(to menu: LeftMenu) {
        switch menu {
        case .one:
            self.slideMenuController()?.changeMainViewController(self.storyboardOne, close: true)
        case .two:
            self.slideMenuController()?.changeMainViewController(self.storyboardTwo, close: true)
        case .three:
            self.slideMenuController()?.changeMainViewController(self.storyboardThree, close: true)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menu = ["One", "Two", "Three"]
        let cell = UITableViewCell(style: .default, reuseIdentifier: "MenuCell")
        cell.backgroundColor = UIColor.clear
        cell.textLabel!.text = menu[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let menu = LeftMenu(rawValue: indexPath.row) {
            self.changeController(to: menu)
        }
    }


}
