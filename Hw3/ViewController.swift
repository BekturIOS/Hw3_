//
//  ViewController.swift
//  Hw3
//
//  Created by Бектур Каримов on 21/2/23.
// наконец то я закончило)))

import UIKit

class ViewController: UIViewController {
    
    private var signUpSecondVc = SecondViewController()
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var LabelWelcome: UILabel!
    @IBOutlet weak var TextFieldEmail: UITextField!
    @IBOutlet weak var TextFieldPassword: UITextField!
    @IBAction func ForgetPAsswordButton(_ sender: Any) {
    }
 
    @IBAction func signInButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "fifth_vc")
        if !isEmptyTextField(textField: TextFieldEmail), !isEmptyTextField(textField: TextFieldPassword) {
            navigationController?.pushViewController(vc!, animated: false)
        }
        else{
            navigationController?.pushViewController(vc!, animated: true)
        }
        
    }
    
    
    
    
    
    @IBAction func SignUpButton(_ sender: Any) {
    }
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
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        if !isEmptyTExtField(textField: TextFieldEmail), !isEmptyTExtField(textField: TextFieldPassword) {
//            return false
//        }
//        else if !isEmptyTExtField(textField: TextFieldEmail){
//            return false
//        }
//        else if !isEmptyTExtField(textField: TextFieldPassword){
//            return false
//        }
//        else {
//            return true
//        }
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var showPasswordButton: UIButton!
    
    var isHidden = true
    @IBAction func EyesButton(_ sender: Any) {
        if isHidden {
            showPasswordButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            TextFieldPassword.isSecureTextEntry = false
        } else {
            showPasswordButton.setImage(UIImage(systemName: "eye"), for: .normal)
            TextFieldPassword.isSecureTextEntry = true
        }
        
        isHidden = !isHidden
        
        
    }
    
}



















