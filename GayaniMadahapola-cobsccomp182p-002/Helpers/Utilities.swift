//
//  Utilities.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 2/28/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
import UIKit

class Utilities {
    
    struct Colors {
        
        static let orange = UIColor(red: 255.0/255.0, green: 69.0/255.0, blue: 220.0/255/0, alpha: 1.0)
        static let blue = UIColor(red: 153.0/255.0, green: 204.0/255.0, blue: 255.0/255/0, alpha: 1.0)
        static let green = UIColor(red: 91.0/255.0, green: 197.0/255.0, blue: 159.0/255/0, alpha: 1.0)
        static let white = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255/0, alpha: 1.0)
    }
    
    static func styleTextField(_ textfield:UITextField) {
        
        //Create the bottom line in textfields
        let bottomLine = CALayer()
        
        //bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        
        bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: 300, height: 2)
        
        bottomLine.backgroundColor = UIColor.init(red: 51/255, green: 153/255, blue: 255/255, alpha: 1).cgColor
        
        //Remove Border on text field
        textfield.borderStyle = .none
        
        //Add the line to the text field
        textfield.layer.addSublayer(bottomLine)
        
    }
    //styles for filled buttons
    static func styleFilledButton(_ button: UIButton){
        
        //Filled rounded corner style button
        button.backgroundColor = UIColor.init(red: 91/255, green: 173/255, blue: 255/255, alpha: 1)
        button.layer.cornerRadius = 15.0
        button.tintColor = UIColor.white
    }
    
    static func styleHollowButton(_ button:UIButton) {
        
        // Hollow rounded corner style
        button.layer.borderWidth = 1.5
        //button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderColor = UIColor(red: 91.0/255.0, green: 173.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        button.layer.cornerRadius = 15.0
        button.tintColor = UIColor.black
    }
    
    //password validation
    static func isPasswordValid(_ password : String) -> Bool {
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
}
