//
//  ProfileDataServiceClient.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/2/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
class ProfileDataServiceClient{
    
    static func getAllEvents(completion:@escaping([Profile])->()){
        
        Fbc.shared.collection("Profile").getDocuments { QuerySnapshot, Error in
            if Error == nil {
                let profile:[Profile]!
                
                print(QuerySnapshot?.documents)
                //completion()
            }else{
                
                //completion(nil)
            }
        }
    }
    static func saveProfile(profile: Profile){
        Fbc.shared.collection("Profile").addDocument(data: [
            "p_name":profile.myName,
            "p_email":profile.myEmail,
            "p_contactNo":profile.myContactNo,
            "p_FBURL":profile.myFBURL
            //"p_image": profile.myImage
            ]).addSnapshotListener { (DocumentSnapshot
                , Error) in
        }
    }
}
