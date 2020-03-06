//
//  MyProfileViewController.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/1/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit
import Firebase

class MyProfileViewController: UIViewController {
    
    @IBOutlet weak var EditBtn: UIBarButtonItem!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var contactNoLabel: UILabel!
    @IBOutlet weak var FbUrlLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let db = Firestore.firestore()
        
        ProfileDataServiceClient.getAllEvents { Profile in
            
            print(Profile)
        }
        //Add a document
        db.collection("Profile").addDocument(data: ["myName": "Gayani Madahapola", "email": "gayani@g.com", "contactNo": "+9412345678" , "FBUrl" : "https://www.facebook.com/Gayanii.Madahapola"])

        // Do any additional setup after loading the view.
        //Background color style
        view.setGradiantBackground(colorOne: Utilities.Colors.white , colorTwo: Utilities.Colors.blue)
    }
    @IBAction func MyEventListBtnTapped(_ sender: Any) {
        
        
    }
    @IBAction func LogOutBtnTapped(_ sender: Any) {
        
        self.makeLogOutAlert()
        
    }
    
    private func transition(identifier: String) {
        DispatchQueue.main.async {
            TransitionManager.sharedInstance.transitionSegue(sender: self, identifier: identifier)
        }
    }
}

