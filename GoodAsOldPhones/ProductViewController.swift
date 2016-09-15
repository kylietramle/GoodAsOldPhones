//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Kylie Tram Le on 9/6/16.
//  Copyright © 2016 Kylie Tram Le. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = product {
            productNameLabel.text = p.name
            if let i = p.productImage {
                productImageView.image = UIImage(named: i)
            }
        }
        
    }

    @IBAction func addToCartPressed(sender: AnyObject) {
        print("Button Tabbed")
    }

}
