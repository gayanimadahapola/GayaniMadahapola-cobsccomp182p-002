//
//  TabBarViewController.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/5/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController{
    
    
   // let mainVC = MainViewController()
    let HomeVC = EventHomeViewController()
    let profileVC = MyProfileViewController()
    let AddEventVC = CreateEventViewController()
    //let SearchEventVC = SearchEventViewController()
    
    //let tabBarController = UITabBarController()
    //tabBarController.viewControllers = [HomeVC, profileVC, AddEventVC, SearchEventVC]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
