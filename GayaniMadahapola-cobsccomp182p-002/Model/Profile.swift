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
    
    init(mname : String, memail : String ,mcontactNo:String ,mFB:String ,mImage: String) {
        self.myName = mname
        self.myEmail = memail
        self.myContactNo = mcontactNo
        self.myFBURL = mFB
        //self.myImage = mImage
    }
    
init(myProfile : MyProfileViewController) {
    //self.myName = myProfile.userNameLabel
    //self.myEmail = myProfile.emailLabel
//    self.myContactNo = myProfile.contactNoLabel
//    self.imageData = myProfile.myImage
    }
}

