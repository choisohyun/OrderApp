
//
//  MyFavorite.swift
//  OrderApp
//
//  Created by SWUCOMPUTER on 2017. 10. 11..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class MyFavorite: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var checkLabel: UILabel!
    @IBOutlet var favorPicker: UIPickerView!
    
    let favorArray: Array<String> = ["달달한", "매운", "단짠 조합", "짭짤한", "고소한", "가벼운"]
    let moneyArray: Array<String> = ["20,000원 이하 - 1인용", "30,000원 이하 - 1~2인용", "30,000원 초과 - 3~4인용"]
    
    let favor1Image = UIImage(named: "favor1.png")
    let favor2Image = UIImage(named: "favor2.png")
    let favor3Image = UIImage(named: "favor3.png")
    let favor4Image = UIImage(named: "favor4.png")
    let favor5Image = UIImage(named: "favor5.jpg")
    let favor6Image = UIImage(named: "favor6.png")
    
    let money1Image = UIImage(named: "money1.png")
    let money2Image = UIImage(named: "money2.png")
    let money3Image = UIImage(named: "money3.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        checkLabel.text = ""
    }
    
    @IBAction func btnCheck(_ sender: UIButton) {
        let favor: String = self.favorArray[self.favorPicker.selectedRow(inComponent: 0)]
        let money: String = self.moneyArray[self.favorPicker.selectedRow(inComponent: 1)]
        
        checkLabel.text = favor + ", \n" + money
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let favor = self.favorPicker.selectedRow(inComponent: 0)
        let money = self.favorPicker.selectedRow(inComponent: 1)
        
        if segue.identifier == "toRecommand" {
            let destVC = segue.destination as! Recommand
            
            destVC.title = "추천 메뉴"
            
            switch favor {
            case 0:
                destVC.info = favor1Image
                destVC.favorName = "허니콤보 | 17,000원"
            case 1:
                destVC.info = favor2Image
                destVC.favorName = "볼케이노 | 16,000원"
            case 2:
                destVC.info = favor3Image
                destVC.favorName = "고추바사삭 | 16,000원"
            case 3:
                destVC.info = favor4Image
                destVC.favorName = "허니딥치즈 | 18,000원"
            case 4:
                destVC.info = favor5Image
                destVC.favorName = "후라이드 | 15,000원"
            case 5:
                destVC.info = favor6Image
                destVC.favorName = "순살 | 17,000원"
            default:
                break
            }
            
            switch money {
            case 0:
                destVC.info2 = money1Image
                destVC.moneyName = ""
            case 1:
                destVC.info2 = money2Image
                destVC.moneyName = "웨지감자 | 6,000원"
            case 2:
                destVC.info2 = money3Image
                destVC.moneyName = "바비큐 폭립 | 20,000원"
            default:
                break
            }
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return favorArray.count
        } else {
            return moneyArray.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return favorArray[row]
        } else {
            return moneyArray[row]
        }
    }
    
}
