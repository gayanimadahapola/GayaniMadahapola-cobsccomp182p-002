//
//  CreateEventViewController.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/1/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class CreateEventViewController: UIViewController {

    @IBOutlet weak var eventNamelbl: UILabel!
    @IBOutlet weak var eventNameTf: UITextField!
    @IBOutlet weak var locationlbl: UILabel!
    @IBOutlet weak var locationTf: UITextField!
    @IBOutlet weak var findLocationBtn: UIButton!
    @IBOutlet weak var datelbl: UILabel!
    @IBOutlet weak var dateTf: UITextField!
    @IBOutlet weak var timelbl: UILabel!
    @IBOutlet weak var timeTf: UITextField!
    @IBOutlet weak var infoLbl: UILabel!
    @IBOutlet weak var infoTf: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Background color style
        view.setGradiantBackground(colorOne: Utilities.Colors.white , colorTwo: Utilities.Colors.blue)
    }

    @IBAction func findLocationBtnTapped(_ sender: Any) {
        
    }
    @IBAction func datePicker(_ sender: Any) {
        
    }
    @IBAction func discardBtnTapped(_ sender: Any) {
        
    }
    @IBAction func createEventBtnTapped(_ sender: Any) {
        
    }
}
