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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
