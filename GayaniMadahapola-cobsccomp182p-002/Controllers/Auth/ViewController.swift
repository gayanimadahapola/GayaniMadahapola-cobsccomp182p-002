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
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    override func viewDidDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
    // Touch ID & Face ID integration is here - when you touch the nibm event logo
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
                    //navigate to Event home by using face ID/Touch ID
                    self.navigateToEventHomeViewController()
                    
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
    
    @IBAction func SignUpBtnTapped(_ sender: Any) {
    
        
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUp") as! SignUpViewController
//        self.navigationController?.pushViewController(vc, animated: true)
//
        
    }
    
    @IBAction func LoginBtnTapped(_ sender: Any) {
        
    }
    
    //navigate to Event home by using face ID
    func navigateToEventHomeViewController() {
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.EventHomeViewController) as! EventHomeViewController
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
}
    


