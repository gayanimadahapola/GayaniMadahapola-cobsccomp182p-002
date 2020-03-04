//
//  AlertHandler.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/4/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
import UIKit

class SharedClass: NSObject {
    
    //Global variables
    //This is shared class
    static let sharedInstance = SharedClass()
    
    //Show alert
    func alert(view: UIViewController, title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: { action in
        })
        alert.addAction(defaultAction)
        DispatchQueue.main.async(execute: {
            view.present(alert, animated: true)
        })
    }
    
    private override init() {
    }
}
