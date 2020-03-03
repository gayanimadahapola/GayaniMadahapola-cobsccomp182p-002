//
//  Event.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/2/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation

class Event {
    
    var eventName :String!
    var eventImage :String!
    var eventLocation :String!
    var eventDateTime :String!
    var eventDesc :String!

    init(ename:String,eI:String!,eLocation:String!,eventDate:String!,eDesc:String!) {
        self.eventName = ename
        self.eventImage = eI
        self.eventLocation = eLocation
        self.eventDesc = eDesc
    }
}
