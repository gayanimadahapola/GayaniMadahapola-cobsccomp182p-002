//
//  EventDetailViewController.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/1/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {
    
    @IBOutlet weak var eventImg: UIImageView!
    @IBOutlet weak var publisherAvatar: UIImageView!
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var infoView: UITextView!
    @IBOutlet weak var reviewsLabel: UILabel!
    @IBOutlet weak var goingBtn: UIButton!
    @IBOutlet weak var commentField: UITextField!
    @IBOutlet weak var postButton: UIButton!
    
    @IBAction func HomeBtn(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Home") as! EventDetailViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
        view.setGradiantBackground(colorOne: Utilities.Colors.white , colorTwo: Utilities.Colors.blue)
    }
    func setUpElements() {
        //added button styles
        Utilities.styleFilledButton(goingBtn)
        Utilities.styleHollowButton(postButton)
    }
    @IBAction func goingBtnTapped(_ sender: Any) {
        
        
    }
    
    @IBAction func postBtnTapped(_ sender: Any) {
        
    }
    
    private func transition(identifier: String) {
        DispatchQueue.main.async {
            TransitionManager.sharedInstance.transitionSegue(sender: self, identifier: identifier)
        }
    }
    

}
