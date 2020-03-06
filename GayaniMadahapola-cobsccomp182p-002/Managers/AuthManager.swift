//
//  AuthManager.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/6/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
import FirebaseAuth

final class AuthManager {
    public static let sharedInstance = AuthManager()
    
    func signOut(completion: @escaping (_ success: Bool?, _ error: String?) -> Void) {
        let firebaseAuth = Auth.auth()
        
        do {
            try firebaseAuth.signOut()
            completion(true, nil)
        } catch let signOutError as NSError {
            completion(nil, "Error signing out: %@ \(signOutError)")
        }
    }
    
    func sendPasswordReset(emailField: UITextView, completion: @escaping (_ success: Bool?, _ error: String?) -> Void) {
        guard
            let email = emailField.text else { return }
        
        Auth.auth().sendPasswordReset(withEmail: email, completion: {error in
            if error != nil {
                completion(nil, error?.localizedDescription)
            } else {
                completion(true, nil)
            }
        })
    }

}
