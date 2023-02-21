//
//  ThirdViewController.swift
//  Hw3
//
//  Created by Бектур Каримов on 23/2/23.
//

import UIKit

class ThirdViewController: UIViewController{
    
    @IBOutlet weak var espTextField: UITextField!
    @IBOutlet weak var employeeIDTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    

    private func isEmptyTextField(textField: UITextField) -> Bool{
        guard let text = textField.text else { return false }
            if text.isEmpty{
                textField.layer.borderWidth = 1
                textField.layer.borderColor = UIColor.red.cgColor
                textField.placeholder = "неправильно ввели данные!"
                return true
            } else {
                textField.layer.borderWidth = 0
                return false
            }
        }

    
    @IBAction func goToFourthVC(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "fourth_vc")
        if !isEmptyTextField(textField: espTextField), !isEmptyTextField(textField: employeeIDTextField), !isEmptyTextField(textField: phoneNumberTextField) {
            navigationController?.pushViewController(vc!, animated: true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
