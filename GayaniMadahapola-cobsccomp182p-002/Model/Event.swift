//
//  Event.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/2/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
import UIKit
//import CoreLocation
//import FirebaseFirestore

class Event {
    
    let eventName :String!
    let eventImage :String!
    let eventLocation :String!
    let eventDate :String!
    //let timeStamp: Timestamp
    let eventDesc :String!
    let publisherName : String!
    let publisherImage : String!
    //let isGoing : Bool
    
    init(ename:String!,eImage:String!,eLocation:String!,eDate:String!,eDesc:String!,publisherName:String!,publisherImage: String!) {
        self.eventName = ename
        self.eventImage = eImage
        self.eventLocation = eLocation
        self.eventDate = eDate
        self.eventDesc = eDesc
        self.publisherName = publisherName
        self.publisherImage = publisherImage
    }
}

/*
class Event {
    
    var eventName :String?
    var eventImage :String?
    var eventLocation :String?
    var eventDate :String?
    var timeStamp: Timestamp
    var eventDesc :String?
    var publisherName : String?
    var publisherImage : String?
    var isGoing : Bool
    
    init?(event: [String: Any], docId: String?) {
        guard let eventName = event["ename"] as? String,
        let eventImage = event["eImg"] as? String,
        let eventLocation = event["eLocation"] as? String,
        let eventDate = event["eDate"] as? String,
        let timeStamp = event["timeStamp"] as? Timestamp,
        let eventDesc = event["eDesc"] as? String,
        let publisherName = event["ePublisher"] as? String,
        let publisherImage = event["ePublisherImage"] as? String,
        let isGoing = event["isGoing"] as? Bool
        else { return nil }
        
        self.eventName = eventName
        self.eventImage = eventImage
        self.eventLocation = eventLocation
        self.eventDate = eventDate
        self.timeStamp = timeStamp
        self.eventDesc = eventDesc
        self.publisherName = publisherName
        self.publisherImage = publisherImage
        self.isGoing = isGoing
    }
}
 */
