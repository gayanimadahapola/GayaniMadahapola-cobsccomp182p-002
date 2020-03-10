
//
//  EventDataServiceClient.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/2/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
class EventDataServiceClient{
    
    
    static func getAllEvents(completion:@escaping([Event])->()){
        
        Fbc.shared.collection("Event").getDocuments { QuerySnapshot, Error in
            if Error == nil {
                let events:[Event]!
                
                print(QuerySnapshot?.documents)
                //completion()
            }else{
                
                //completion(nil)
            }
        }
    }
    
    static func saveEvent(event: Event){
        Fbc.shared.collection("Events").addDocument(data: [
            "ename":event.eventName,
            "eImage":event.eventImage,
            "eDate":event.eventDate,
            "eLocation":event.eventLocation,
            "eDesc":event.eventDesc,
            "publisherName": event.publisherName,
            "publisherImage":event.publisherImage,
            ]).addSnapshotListener { (DocumentSnapshot
                , Error) in
        }
    }
}
