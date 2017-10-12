//
//  ViewController.swift
//  OrderApp
//
//  Created by SWUCOMPUTER on 2017. 10. 1..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var callNumTextField: UITextField!
    @IBOutlet var callNumTextField2: UITextField!
    @IBOutlet var callNumTextField3: UITextField!
    @IBOutlet var phoneTextField: UITextField!
    @IBOutlet var phoneTextField2: UITextField!
    @IBOutlet var phoneTextField3: UITextField!
    @IBOutlet var addTextField: UITextField!
    
    @IBOutlet var emailPicker: UIPickerView!
    
    let emailList: Array<String> = ["naver.com", "daum.net", "swu.ac.kr", "gmail.com", "hotmail.net"]
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnNextPressed(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "orderInfo" {
            let destVC = segue.destination as! CompleteOrder
        
            destVC.title = "개인정보 확인"
            
            let orderInfo: String? =
                "입력하신 정보를 확인해 주시기 바랍니다.\n\n이름: " + (self.nameTextField.text)!  +
                    "\n이메일: " + (self.emailTextField.text)! + "@" + (emailList[self.emailPicker.selectedRow(inComponent: 0)]) +
                    "\n전화번호: " + (self.callNumTextField.text)! + "-" + (self.callNumTextField2.text)! + "-" + (self.callNumTextField3.text)! +
                    "\n핸드폰번호: " + (self.phoneTextField.text)! + "-" + (self.phoneTextField2.text)! + "-" + (self.phoneTextField3.text)! +
                    "\n주소: " + (self.addTextField.text)! + "\n\n즐거운 하루 되세요!"

            destVC.info = orderInfo
        }
        else {
            let destVC = segue.destination as! MyFavorite
            destVC.title = "취향 선택"
        }
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return emailList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return emailList[row]
    }

    
}

