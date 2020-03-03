//
//  SignUp.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/4/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class UserPerson {
    
    var email : String!
    var firstName :String!
    var lastName :String!
    var password :String!
    //var image = String!
    
    
    init(uemail:String!,ufirstname:String!,ulastname:String!,upassword:String!,eventimg:String!) {
        self.email = uemail
        self.firstName = ufirstname
        self.lastName = ulastname
        self.password = upassword
        //self.image = eventimg
    }
    /*
    init(signup : SignUpViewController) {
        self.email = signup.emailTextField
        self.firstName = signup.firstNameTextField
        self.lastName = signup.lastNameTextField
        self.password = signup.passwordTextField
    }
    init(login : LoginViewController) {
        self.email = login.emailTextField
        self.password = login.passwordTextField
    }
    init(emails:String,firstname:String,lastname:String) {
        
        self.email = emails
        self.firstName = firstname
        self.lastName = lastname
    }
 */
}
