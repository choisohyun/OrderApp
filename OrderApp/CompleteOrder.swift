//
//  CompleteOrder.swift
//  OrderApp
//
//  Created by SWUCOMPUTER on 2017. 10. 11..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class CompleteOrder: UIViewController {

    @IBOutlet var orderLabel: UILabel!
    var info: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let contentString = info {
            orderLabel.text = contentString
        }
    }
}
