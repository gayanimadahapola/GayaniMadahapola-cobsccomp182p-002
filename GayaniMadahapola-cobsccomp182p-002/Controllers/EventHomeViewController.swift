//
//  EventHomeViewController.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 2/29/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class EventHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var name = ["Walk To Sustain" , "Workshop & Public Awareness" , "HOLA '20 | NIBM Open Day" , "NIBM Design Show 2019" , "Youth Rave 2019" , "Free Seminar on Data Science in Real Life" ,"Fashion Design Workshop" , "Blood Donation Camp" , "DJ Party And Stunt Show" , "Cyberfest 2018"]
    //    var publisherAvatar = []
    //    var date = []
    //    var location = []
    //    var info = []
        
    @IBOutlet weak var myTableView: UITableView!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Background color style
        view.setGradiantBackground(colorOne: Utilities.Colors.white , colorTwo: Utilities.Colors.blue)
       
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell" , for: indexPath)
        
    }

}
