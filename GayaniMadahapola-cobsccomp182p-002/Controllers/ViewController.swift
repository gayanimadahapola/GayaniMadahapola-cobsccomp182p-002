//
//  ViewController.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 2/8/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
    }

    func setUpElements() {
        
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(loginButton)
    }
    
    
    @IBAction func TouchIDButton(_ sender: Any) {
        
        //call Touch ID or Face ID
        TouchIDCall()
    }
    
    func TouchIDCall(){
        
        let  context: LAContext = LAContext()
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil){
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Login with finger print", reply: { (wasCorrect, error )in
                if wasCorrect
                {
                    print("Correct!")
                }else{
                    print("Incorrect!")
                }
            })
        }
        else
        {
            //alert it doesn't support touch ID
        }
        
    }
    
}

