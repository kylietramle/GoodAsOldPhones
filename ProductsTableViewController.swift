//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Kylie Tram Le on 9/13/16.
//  Copyright © 2016 Kylie Tram Le. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNames = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "1984 Motorola Portable"]
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let pNames = productNames { // if let returns an Int, not optional Int
        return pNames.count
        }
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        let productName = productNames?[indexPath.row]
        
        if let pName = productName {
            cell.textLabel?.text = pName
        }
        cell.imageView?.image = UIImage(named: "image-cell1")
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "ShowProduct") {
            let productVC = segue.destinationViewController as? ProductViewController
            productVC?.productName = "Really old phone"
        }
    }


}
