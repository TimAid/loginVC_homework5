//
//  ViewController.swift
//  Sing_in_view_controller
//
//  Created by Aid on 22.05.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: IB Outlets
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
        
    //MARK: Private properties
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: make layer for buttons
        loginButton.layer.cornerRadius = 30
        createAccountButton.layer.cornerRadius = 30
        
        //MARK: magic with textfields
        usernameTF.useUnderline(a: 1)
        passwordTF.useUnderline(a: 1)
        usernameTF.delegate = self
        passwordTF.delegate = self
    }
    
    
    
    //MARK: IB Outlets
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard usernameTF.text == user.login,
              passwordTF.text == user.password
        else {
            showAlert(title: "Invalid login or password",
                      message: "please, enter correct login and password",
                      textField: passwordTF)
            return
        }
      performSegue(withIdentifier: "login", sender: nil)
    }
    
    
    
    //MARK: Text Field Delegates
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        textField.useUnderline(a: 2)
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
    textField.useUnderline(a: 1)
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
    textField.useUnderline(a: 1)
    return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginButtonPressed(loginButton)
        }
        return true
    }
    
    //MARK: Navigation
    
//    // MARK: Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let tabBarController = segue.destination as! UITabBarController
//        let welcomeVC = tabBarController.viewControllers?.first as! WelcomeViewController
//        let navigationVC = tabBarController.viewControllers?.last as! UINavigationController
//        let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
//        welcomeVC.user = user
//        aboutUserVC.user = user
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "createAccount" else {
            let tabBarController = segue.destination as! UITabBarController
            let newsLoginController = tabBarController.viewControllers?.first as! LoginViewController
            newsLoginController.user = user
            return
        }
        
        }
}


//MARK: Alert Controllerm
extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

//MARK: TEXTFIELD extension
extension UITextField {

    func useUnderline(a: Int) {
        if a == 1 {
        let border = CALayer()
        let borderWidth = CGFloat(1.0)
        border.borderColor = UIColor(red: 0.796, green: 0.796, blue: 0.796, alpha: 1).cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - borderWidth, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = borderWidth
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
        }
        else if a == 2{
            let border = CALayer()
            let borderWidth = CGFloat(1.0)
            border.borderColor = UIColor(red: 4/255, green: 118/255, blue: 78/255, alpha: 1).cgColor
            border.frame = CGRect(x: 0, y: self.frame.size.height - borderWidth, width: self.frame.size.width, height: self.frame.size.height)
            border.borderWidth = borderWidth
            self.layer.addSublayer(border)
            self.layer.masksToBounds = true
        }
    }
}

