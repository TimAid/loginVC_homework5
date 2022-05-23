//
//  LoginViewController.swift
//  Sing_in_view_controller
//
//  Created by Aid on 23.05.2022.
//

import UIKit

class LoginViewController: UIViewController {


    //MARK: variables
    var user : User!
    
    //MARK: IB Outlets
    @IBOutlet weak var userLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userLabel.text = "\(user.person.fullName)"
    }
}
