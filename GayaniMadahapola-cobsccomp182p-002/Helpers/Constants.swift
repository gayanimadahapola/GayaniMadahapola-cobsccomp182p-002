//
//  Constants.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 2/22/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    
    struct Storyboard {
        
        static let homeViewController = "HomeVC"
        
    }
}

/* struct Colors {
 
    static let orange = UIColor(red: 255.0/255.0, green: 69.0/255.0, blue: 220.0/255/0, alpha: 1.0)
    static let blue = UIColor(red: 153.0/255.0, green: 204.0/255.0, blue: 255.0/255/0, alpha: 1.0)
    static let green = UIColor(red: 91.0/255.0, green: 197.0/255.0, blue: 159.0/255/0, alpha: 1.0)
    static let white = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255/0, alpha: 1.0)
} */

extension UIView {
    
    func setGradiantBackground(colorOne: UIColor, colorTwo: UIColor) {
        
        //instantiate the gradiant objects
        let gradiantLayer = CAGradientLayer()
        
        //Adding properties to gradiant layer
        gradiantLayer.frame = bounds
        gradiantLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradiantLayer.locations = [0.0, 1.0] //isnt required
        gradiantLayer.startPoint = CGPoint(x: 1.0, y: 1.0) //this is where the gradiant start
        gradiantLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradiantLayer, at: 0)
        
    }
}
