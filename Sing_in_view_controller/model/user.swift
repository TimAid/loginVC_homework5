//
//  user.swift
//  Sing_in_view_controller
//
//  Created by Aid on 23.05.2022.
//

import Foundation

//MARK: Create our model 
struct User {
    let login : String
    let password : String
    let person : Person
    
    static func getUserData() -> User {
        User(login: "user",
             password: "password",
             person: Person(name: "Тимур", surname: "Маннапов"))
    }
    
}

struct Person {
    let name : String
    let surname : String
    
    var fullName : String {
        "\(name) \(surname)"
    }
}
