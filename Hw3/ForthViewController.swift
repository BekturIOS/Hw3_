//
//  ForthViewController.swift
//  Hw3
//
//  Created by Бектур Каримов on 23/2/23.
//

import UIKit


class ForthViewController: UIViewController{
    
    @IBOutlet weak var ImageForthVC: UIImageView!
    @IBOutlet weak var TextfieldForthVC: UITextField!
    @IBOutlet weak var PasswordTextFieldForthVC: UITextField!
    @IBOutlet weak var ConfirmPassword: UITextField!
    @IBOutlet weak var SubmitForthVC: UIButton!
    
        private func isEmptyTextFieldPassVC(textField: UITextField) -> Bool{
        guard let text = textField.text else {return false}
        if text.isEmpty{
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "Придумайте пaроль!"
        }
        return true
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !isEmptyTextFieldPassVC(textField: PasswordTextFieldForthVC), !isEmptyTextFieldPassVC(textField: ConfirmPassword) {
            return false
        }
        else if !isEmptyTextFieldPassVC(textField: PasswordTextFieldForthVC){
            return false
        }
        else if !isEmptyTextFieldPassVC(textField: ConfirmPassword){
            return false
        }
        else {
           return true
        }
    }
    
    @IBOutlet weak var IsHiddenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var isHidden2 = true
    
    @IBAction func ISHiddenButt(_ sender: Any) {
        if isHidden2{
            IsHiddenButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            PasswordTextFieldForthVC.isSecureTextEntry = false
        } else {
            IsHiddenButton.setImage(UIImage(systemName: "eye"), for: .normal)
            PasswordTextFieldForthVC.isSecureTextEntry = true
        }
        isHidden2 = !isHidden2
        
    }
    
    
    @IBOutlet weak var Eyes_2Vc: UIButton!
    var eyesButton = true
    @IBAction func Eyes2(_ sender: Any) {
        if eyesButton {
            Eyes_2Vc.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            ConfirmPassword.isSecureTextEntry = false
        }else{
            Eyes_2Vc.setImage(UIImage(systemName: "eye"), for: .normal)
            ConfirmPassword.isSecureTextEntry = true
        }
        eyesButton = !eyesButton
    }
    
    
}
