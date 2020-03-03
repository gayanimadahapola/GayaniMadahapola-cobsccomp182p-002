//
//  LoginViewController.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 2/20/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController, UIWebViewDelegate {
    
    var gradientLayer: CAGradientLayer!

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPasswordField: UIButton!
    @IBOutlet weak var errorLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
        view.setGradiantBackground(colorOne: Utilities.Colors.white , colorTwo: Utilities.Colors.blue)
    }
    
    func setUpElements() {
        
        //Hide the error label
        errorLable.alpha = 0
        
        //Add styles to the elements
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(loginButton)
    }
    
    
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        
        let forgotPasswordAlert = UIAlertController(title: "Forgot password?", message: "Enter your logged email ID", preferredStyle: .alert)
        forgotPasswordAlert.addTextField { (textField) in
            textField.placeholder = "Enter email address"
        }
        
        forgotPasswordAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        forgotPasswordAlert.addAction(UIAlertAction(title: "Reset Password", style: .default, handler: { (action) in
            
            let resetEmail = forgotPasswordAlert.textFields?.first?.text
            
            Auth.auth().sendPasswordReset(withEmail: resetEmail!, completion: { (error) in
                
                //to avoid unwxpected behaviour
                DispatchQueue.main.async {
                    //Use of "if let" to access the error, if it is non-nil
                if let error = error{
                    
                    let resetFailedAlert = UIAlertController(title: "Reset Failed", message: error.localizedDescription, preferredStyle: .alert)
                    resetFailedAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(resetFailedAlert, animated: true, completion: nil)
                }
                else {
                    let resetEmailSentAlert = UIAlertController(title: "Reset email sent successfully", message: "Check your email", preferredStyle: .alert)
                    resetEmailSentAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(resetEmailSentAlert, animated: true, completion: nil)
                    }
                }
                })
            }))

        //Show alert
        self.present(forgotPasswordAlert, animated: true, completion: nil)
    }
    
    
   @IBAction func loginTapped(_ sender: Any) {
        
        //create cleaned verdion of the textfields
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        //Alert handling---->
        //        let alert = UIAlertController(title: "Alert", message: "Email or password is not matching!", preferredStyle: .alert)
        //        let OK = UIAlertAction(title: "OK", style: .default, handler:   nil)
        //        alert.addAction(OK)
        
        //Sign in in the user
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil {
                //couldn't signin
                self.errorLable.text = error!.localizedDescription
                self.errorLable.alpha = 1
            }
            else{
                
                let eventHomeViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.EventHomeViewController) as? EventHomeViewController
                
                self.view.window?.rootViewController = eventHomeViewController
                self.view.window?.makeKeyAndVisible()
            }
        }
    }
}


