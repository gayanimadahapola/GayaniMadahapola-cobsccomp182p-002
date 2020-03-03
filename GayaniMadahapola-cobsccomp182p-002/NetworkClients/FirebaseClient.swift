//
//  FirebaseClient.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/2/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth

import FirebaseFirestore

class Fbc {
 
    static let shared = Firestore.firestore()
    
    static let sharedAuth = Auth.auth()
    
}
