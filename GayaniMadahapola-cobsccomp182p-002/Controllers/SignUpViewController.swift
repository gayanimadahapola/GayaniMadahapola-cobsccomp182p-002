//
//  SignUpViewController.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 2/20/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setUpElements()
        //Add Styles - background
        view.setGradiantBackground(colorOne: Utilities.Colors.white , colorTwo: Utilities.Colors.blue)
    }
  
    func setUpElements() {
        
        //Hide the error label
        errorLabel.alpha = 0
        
        //Add styles to the elements
        Utilities.styleTextField(firstNameTextField)
        Utilities.styleTextField(lastNameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(signUpButton)
    }
    
    //method to validate field
    //check the fields and validate that the data is correct. if all corrects, this method return nil.otherwise it return the error message.
    
    func validateFields() -> String? {
        
        //check all fields are filled
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            return "Please fill the all fields."
        }
        
        //check if the password is incorrect
        let NewPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(NewPassword) == false {
            
            //password isnt secure enough
            return"Password must have atleast 8 characters, contains a special character and a number. "
        }
        
        return nil
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        
        //Validate the fields
        let error = validateFields()
        
        if error != nil{
            //show error message, when something wrong in the fields
            showError(error!)
        }
        else{
            //create the data
            let firstName = firstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastName = lastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            //create the user
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                //check errors
                if err != nil{
                    //There was and error creating the user
                    self.showError("Error creating user")
                }
                else{
                    //user was created successfully, now store the firstname and lastname
                    let db  = Firestore.firestore()
                    
                    db.collection("users").addDocument(data: ["firstname" : firstName, "lastName":lastName, "email":email , "password":password ,"uid" : result!.user.uid]) {
                        (error) in
                        
                        if error != nil {
                            //show error message
                            self.showError("Error saving user data")
                        }
                    }
                    //Transition to the Home Screen
                    self.transitionToHome()
                }
            }
        }
    }
    func showError(_ message:String){
        
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    func transitionToHome() {
        let eventHomeViewController = storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.EventHomeViewController) as? EventHomeViewController
        
        view.window?.rootViewController = eventHomeViewController
        view.window?.makeKeyAndVisible()
    }
    
}
