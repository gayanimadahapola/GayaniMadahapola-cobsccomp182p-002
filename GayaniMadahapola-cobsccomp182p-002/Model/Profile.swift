//
//  Profile.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/2/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
import UIKit

class Profile {
    
    var myName :String?
    var myEmail :String?
    var myContactNo :String?
    var myFBURL :String?
    //var myImage = String?
    //var imageData = UIImage?
    
init?(myProfile : [String: Any]) {
    guard let myName = myProfile["mname"] as? String,
    let myEmail = myProfile["memail"] as? String,
    let myContactNo = myProfile["mcontactNo"] as? String,
    let myFBURL = myProfile["mFB"] as? String
    else {
        return nil
    }
    self.myName = myName
    self.myEmail = myEmail
    self.myContactNo = myContactNo
    self.myFBURL = myFBURL
    
    }
}
