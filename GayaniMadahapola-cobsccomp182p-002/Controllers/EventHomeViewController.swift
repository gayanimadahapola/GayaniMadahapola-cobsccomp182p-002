//
//  EventHomeViewController.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 2/29/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class EventHomeViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    var eventName = ["Walk To Sustain" , "Workshop & Public Awareness" , "HOLA '20 | NIBM Open Day" , "NIBM Design Show 2019" , "Youth Rave 2019" , "Free Seminar on Data Science in Real Life" ,"Fashion Design Workshop" , "Blood Donation Camp" , "DJ Party And Stunt Show" , "Cyberfest 2018"]
    
    //let eventImage: [UIImage] = []
    
    var eventImage = [UIImage(named: "walkTo"), UIImage(named: "workshopPublicAwareness"), UIImage(named: "Hola"), UIImage(named: "DesignShow"), UIImage(named: "YouthRave"), UIImage(named: "FreeSeminaDataScience"), UIImage(named: "FashionDesigner"), UIImage(named: "BloodDonation"), UIImage(named: "DJParty"), UIImage(named: "CyberFest")]
    
    var publisherAvatar = [UIImage(named: "girl96")]
    
    var date = ["29th February 2020 Sat 2.30 PM", "23th February 2020 Sun 9.00 AM", "19th January 2020 Sat 10.00 AM","12th September 2019 Thr 10.00 AM", "08th September 2019 Sun 10.30 AM", "15th February 2020 Sat 2.00 PM", "18th May 2019 Fri 5.00 PM", "25th April 2019 Wed 9.00 AM", "31th Auguest 2019 3.30 PM", "08th September 2019 Sat 9.00 AM"]
    
    var location = ["NIBM, Colombo 09"]
    
    var info = ["Free Seminar on Data Science in Real Life - for school leavers, university students and for those who are interested in Data Science."]
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem;

        // Do any additional setup after loading the view.
        //Background color style
        view.setGradiantBackground(colorOne: Utilities.Colors.white , colorTwo: Utilities.Colors.blue)
    }
    
    //set height for cells
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 310
    }
    
    //set numbers of cell rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? EventTimelineCell
        cell?.eventNameLabel.text = eventName[indexPath.row]
        cell?.eventImage.image = eventImage[indexPath.row]
        //cell?.avatar.image = publisherAvatar[indexPath.row]
        //cell?.DateTimeLabel.text = date[indexPath.row]
        //cell?.locationLabel.text = location[indexPath.row]
        //cell?.infoLabel.text = info[indexPath.row]
        //cell?.eventImage.image = UIImage(named: "FashionDesigner")
        //cell?.eventImage.image = UIImage(named: eventName[indexPath.row])
        
        return cell!
    }
    //select cell row and navigate to event detail page
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let  vc = storyboard?.instantiateViewController(withIdentifier: "EventDetailViewController") as? EventDetailViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
