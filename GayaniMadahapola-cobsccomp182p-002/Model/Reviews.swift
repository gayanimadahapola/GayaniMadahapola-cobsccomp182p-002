//
//  Reviews.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/4/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation

class Reviews {
    
    var user : String!
    var comment :String!
    var time :String!
    
    init( user:String, comment:String, time:String ) {
        
        self.user = user
        self.comment = comment
        self.time = time
    }
}
