//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Kylie Tram Le on 9/7/16.
//  Copyright © 2016 Kylie Tram Le. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // attach scrollView to main view
        view.addSubview(scrollView)
    }
    
    // change the size of subview
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSizeMake(375, 800)
    }

}
