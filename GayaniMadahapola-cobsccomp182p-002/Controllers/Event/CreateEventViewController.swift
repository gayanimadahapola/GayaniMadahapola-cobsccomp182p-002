//
//  CreateEventViewController.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/1/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit
import Firebase
import MobileCoreServices
import RxSwift

class CreateEventViewController: UIViewController ,UINavigationControllerDelegate, UIImagePickerControllerDelegate{

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
        self.transition(identifier: "EditEventToFindLocation")
        
    }
    @IBAction func datePicker(_ sender: Any) {
      
        let datePickerView:UIDatePicker = UIDatePicker()
        
        datePickerView.datePickerMode = UIDatePicker.Mode.date
        dateTf.inputView = datePickerView
        //datePickerView.addTarget(self, action: //#selector(CreateEventViewController.datePickerValueChanged), for: UIControl.Event.valueChanged)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    
    //Add event photos
    @IBAction func addPhotosTapped(_ sender: Any) {
        
        let eventImage = UIImagePickerController()
        eventImage.delegate = self
        
        eventImage.sourceType = UIImagePickerController.SourceType.photoLibrary
        eventImage.allowsEditing = false
        
        self.present(eventImage, animated: true){
            //After it is  complete
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        // Set photoImageView to display the selected image.
        self.addPhotoImage.image = selectedImage
        // Dismiss the picker.
        picker.dismiss(animated: true, completion: nil)
        
    }
        
    @IBAction func discardBtnTapped(_ sender: Any) {
        self.transition(identifier: "EditEventToHome")
    }
    
    @IBAction func createEventBtnTapped(_ sender: Any) {
        self.transition(identifier: "homeToCreateEvent")
        
        let event = Event(ename: eventNameTf.text!, eImage: "", eLocation: locationTf.text!, eDate: "2019-01-30", eDesc: "1234", publisherName: "Gayani Madahapola", publisherImage: "")
      
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
    
    private func transition(identifier: String) {
        DispatchQueue.main.async {
            TransitionManager.sharedInstance.transitionSegue(sender: self, identifier: identifier)
        }
    }
}

