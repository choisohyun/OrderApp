//
//  Recommand.swift
//  OrderApp
//
//  Created by SWUCOMPUTER on 2017. 10. 11..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class Recommand: UIViewController {

    @IBOutlet var favorImageView: UIImageView!
    @IBOutlet var moneyImageView: UIImageView!
    var info: UIImage?
    var info2: UIImage?

    @IBOutlet var favorLabel: UILabel!
    @IBOutlet var moneyLabel: UILabel!
    var favorName: String?
    var moneyName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let contendImg = info {
            favorImageView.image = contendImg
            favorLabel.text = favorName
        }
        if let contentImg = info2 {
            moneyImageView.image = contentImg
            moneyLabel.text = moneyName
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toComplete" {
            let destVC = segue.destination as! CompleteOrder
            
            destVC.title = "주문 완료"
            
            let orderInfo: String? =
                favorName! + "\n" + moneyName! +
                "\n주문이 완료되었습니다."
            
            destVC.info = orderInfo

        }
    }
    
}
