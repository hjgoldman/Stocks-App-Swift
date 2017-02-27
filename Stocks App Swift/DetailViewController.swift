//
//  DetailViewController.swift
//  Stocks App Swift
//
//  Created by Hayden Goldman on 2/27/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, StockDelegate {
    
    @IBOutlet var detailLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func selectedStockName(name :String) {
        
        self.detailLabel.text = name
        
    }
    
    
    
}
