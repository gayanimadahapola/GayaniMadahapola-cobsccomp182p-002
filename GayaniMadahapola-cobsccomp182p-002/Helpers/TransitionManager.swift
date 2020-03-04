//
//  TransitionManager.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/4/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
import UIKit

class TransitionManager {
    
    public static let sharedInstance = TransitionManager()
    
    func transitionSegue(sender: UIViewController, identifier: String) {
        sender.performSegue(withIdentifier: identifier, sender: sender)
    }
}
