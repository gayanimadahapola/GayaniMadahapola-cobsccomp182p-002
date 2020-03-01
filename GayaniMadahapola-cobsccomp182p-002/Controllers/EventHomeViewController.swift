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
    
//        var eventImage = []
//        var publisherAvatar = []
//        var date = []
//        var location = []
//        var info = []
    
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
        cell?.eventImage.image = UIImage(named: "FashionDesigner")
        //cell?.eventImage.image = UIImage(named: eventName[indexPath.row])
        return cell!
    }
    //select cell row and navigate to event detail page
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let  vc = storyboard?.instantiateViewController(withIdentifier: "EventDetailViewController") as? EventDetailViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

/*
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventName.count}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? EventTimelineCell
        cell?.eventNameLabel.text = eventName[indexPath.row]
        cell?.eventImage.image = UIImage(named: "DarkLogo")
        //cell?.eventImage.image = UIImage(named: eventName[indexPath.row])
        return cell!
    }
}
 */
