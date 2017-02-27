//
//  ContainerViewController.swift
//  Stocks App Swift
//
//  Created by Hayden Goldman on 2/27/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    var stockTableVC: StockTableViewController!
    var detailVC: DetailViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let childViewControllers = self.childViewControllers
        self.stockTableVC = childViewControllers[0] as! StockTableViewController
        self.detailVC = childViewControllers[1] as! DetailViewController
        
        self.stockTableVC.delegate = self.detailVC as StockDelegate?
        

        // Do any additional setup after loading the view.
    }
    

}
