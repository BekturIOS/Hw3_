//
//  SecondViewController.swift
//  Hw3
//
//  Created by Бектур Каримов on 23/2/23.
//

import UIKit



class SecondViewController: UIViewController{
    
    @IBOutlet weak var ImageSecond: UIImageView!
    @IBOutlet weak var TextFieldNameSecondViewController: UITextField!
    @IBOutlet weak var TextFieldNumberSecondViewCon: UITextField!
    @IBOutlet weak var TextFieldEmailSecondviewController: UITextField!
    @IBOutlet weak var TextfieldPasswordSecondViewCon: UITextField!
    @IBOutlet weak var textField2PasswordSecondViewCon: UITextField!
    @IBAction func SignUpButtonSecondViewCon(_ sender: Any) {
    }
    
    private func isTextFieldEmpty(textField: UITextField) -> Bool{
        guard let text = textField.text else {return false}
        if text.isEmpty{
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder  = "не правильно ввели данные"
            return false
        }
        else {
            return true
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !isTextFieldEmpty(textField: TextFieldEmailSecondviewController), !isTextFieldEmpty(textField: TextFieldNumberSecondViewCon), !isTextFieldEmpty(textField: TextFieldNameSecondViewController), !isTextFieldEmpty(textField: TextfieldPasswordSecondViewCon), !isTextFieldEmpty(textField: textField2PasswordSecondViewCon){
            return true
        }
        else if isTextFieldEmpty(textField: TextFieldEmailSecondviewController) {
            return false
        }
        else if isTextFieldEmpty(textField: TextFieldNumberSecondViewCon) {
            return false
        }
        else if isTextFieldEmpty(textField: TextFieldNameSecondViewController) {
            return false
        }
        else if isTextFieldEmpty(textField: textField2PasswordSecondViewCon) {
            return false
        }
        else if isTextFieldEmpty(textField: TextfieldPasswordSecondViewCon) {
            return false
        }
        else {
            return true
        }
    }
    
    
    
   override func viewDidLoad(){
        super.viewDidLoad()
       
       
        }
}
