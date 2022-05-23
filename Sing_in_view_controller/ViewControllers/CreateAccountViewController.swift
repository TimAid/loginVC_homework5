//
//  CreateAccountViewController.swift
//  Sing_in_view_controller
//
//  Created by Aid on 23.05.2022.
//

import UIKit

class CreateAccountViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var textfiled: [UITextField]!
    @IBOutlet weak var singInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for item in textfiled {
            item.useUnderline(a: 1)
            item.delegate = self
            }
        
        singInButton.layer.cornerRadius = 30
     
        }
    
    //MARK: TextField Delegate
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
    
    
    @IBAction func SignInButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    }
    

//MARK: Unwind segue
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


