//
//  EventTimeline.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/1/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class EventTimelineCell: UITableViewCell {
    
  
    @IBOutlet weak var avatarImgView: UIImageView!
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var locationBtn: UIButton!
    @IBOutlet weak var DateTimeLabel: UILabel!
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var goingButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpElements()
    self.setGradiantBackground(colorOne: Utilities.Colors.white , colorTwo: Utilities.Colors.blue)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setUpElements() {
        //added button styles
        Utilities.styleFilledButton(goingButton)
    }
    @IBAction func goingTapped(_ sender: Any) {
        
      //SharedClass.SharedInstance.alert(view: self, title: "Give Feedback", message: "If you are interested..")
        
    }
    @IBAction func likeTapped(_ sender: Any) {
        
    }
    @IBAction func commentTapped(_ sender: Any) {
        
    }
    
}
