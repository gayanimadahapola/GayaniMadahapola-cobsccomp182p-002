//
//  ForgotPasswordViewController.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/1/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit


//this is extra controller to reset the forgot password, but one of the function in the login viewcontroller do the same by showing reset password alert

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var forgotPwdImage: UIImageView!
    @IBOutlet weak var forgotPwdLbl1: UILabel!
    @IBOutlet weak var forgotPwdLbl2: UILabel!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Background color style
        view.setGradiantBackground(colorOne: Utilities.Colors.white , colorTwo: Utilities.Colors.blue)
    }

    @IBAction func submitBtnTapped(_ sender: Any) {
        
    }
}

