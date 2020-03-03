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
    @IBOutlet weak var addPhotoImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Show date picker
         showDatePicker()

        // Do any additional setup after loading the view.
        //Background color style
        view.setGradiantBackground(colorOne: Utilities.Colors.white , colorTwo: Utilities.Colors.blue)
    }

    @IBAction func findLocationBtnTapped(_ sender: Any) {
        
    }
    @IBAction func datePicker(_ sender: Any) {
      
        let datePickerView:UIDatePicker = UIDatePicker()
        
        datePickerView.datePickerMode = UIDatePicker.Mode.date
        dateTf.inputView = datePickerView
        //datePickerView.addTarget(self, action: //#selector(CreateEventViewController.datePickerValueChanged), for: UIControl.Event.valueChanged)
        
    }
    
    @IBAction func addPhotosTapped(_ sender: Any) {
        
    }
    @IBAction func discardBtnTapped(_ sender: Any) {
        
        
    }
    @IBAction func createEventBtnTapped(_ sender: Any) {
        let event = Event(ename: eventNameTf.text!, eI: "", eLocation: locationTf.text!, eventDate: "2019-01-30", eDesc: "1234")

        EventDataServiceClient.saveEvent(event: event)
    }
    func showDatePicker(){
        //Formate Date
        //datePicker.datePickerMode = .date
        
        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        
        /*
        //done button & cancel button
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.bordered, target: self, action: Selector("donedatePicker"))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.bordered, target: self, action: Selector(("cancelDatePicker")))
        toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)
 */
        
        // add toolbar to textField
        dateTf.inputAccessoryView = toolbar
        // add datepicker to textField
        //dateTf.inputView = datePicker
        
    }
    @objc func donedatePicker(){
        //For date formate
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        //dateTf.text = formatter.string(from: datePicker.date)
        //dismiss date picker dialog
        self.view.endEditing(true)
    }
    
    func cancelDatePicker(){
        //cancel button dismiss datepicker dialog
        self.view.endEditing(true)
    }
}

