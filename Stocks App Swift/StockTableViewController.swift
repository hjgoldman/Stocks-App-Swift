//
//  StockTableViewController.swift
//  Stocks App Swift
//
//  Created by Hayden Goldman on 2/27/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

import UIKit

protocol StockDelegate {
    func selectedStockName(name :String)
}

class StockTableViewController: UITableViewController {
    
    var stocks :Array<Any> = []
    var delegate :StockDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Stocks"
        
        
        let stock1 = Stock()
        stock1.title = "AAPL"
        stock1.detail = "Apple Inc."
        
        let stock2 = Stock()
        stock2.title = "FB"
        stock2.detail = "Facebook, Inc."
        
        let stock3 = Stock()
        stock3.title = "GOOG"
        stock3.detail = "Alphabet Inc."
        
        let stock4 = Stock()
        stock4.title = "TWTR"
        stock4.detail = "Twitter, Inc."
        
        let stock5 = Stock()
        stock5.title = "NFLX"
        stock5.detail = "Netflix, Inc."
        
        let stock6 = Stock()
        stock6.title = "CSCO"
        stock6.detail = "Cisco Systems, Inc."
        
        let stock7 = Stock()
        stock7.title = "YHOO"
        stock7.detail = "Yahoo! Inc."

        self.stocks.append(stock1)
        self.stocks.append(stock2)
        self.stocks.append(stock3)
        self.stocks.append(stock4)
        self.stocks.append(stock5)
        self.stocks.append(stock6)
        self.stocks.append(stock7)

        
    }

   
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.stocks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StockCell", for: indexPath)
        
        var stockName = Stock()
        stockName = self.stocks[indexPath.row] as! Stock

        cell.textLabel?.text = stockName.title
        cell.detailTextLabel?.text = stockName.detail
        cell.detailTextLabel?.alpha = 0
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        
        self.delegate?.selectedStockName(name: (cell?.detailTextLabel?.text)!)
   
    }
    

   
}
