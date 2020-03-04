//
//  FindLocationViewController.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/2/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit
import MapKit

class FindLocationViewController: UIViewController, UISearchBarDelegate{
    
    @IBOutlet weak var myMapView: MKMapView!
    @IBAction func backBtn(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "createEvent") as! CreateEventViewController
        self.present(vc, animated: true, completion: nil)

        
    }
    @IBAction func searchBtn(_ sender: Any) {
        let  serachController = UISearchController(searchResultsController: nil)
        serachController.searchBar.delegate = self
        
        present(serachController, animated: true, completion: nil)
    }
    
    //search location by clicking search btn
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        //ignore the user
        UIApplication.shared.beginIgnoringInteractionEvents()
        
        //activity Indicator - make constant
        let activityIndicator = UIActivityIndicatorView()
        
        //add styles
        activityIndicator.style = UIActivityIndicatorView.Style.gray
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        
        self.view.addSubview(activityIndicator)
        
        //hide searchbar
        searchBar.resignFirstResponder()
        dismiss(animated: true, completion: nil)
        
        //create the search request
        let  searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = searchBar.text
        
        //start search based on the above search request
        let  activeSearch = MKLocalSearch(request: searchRequest)
        activeSearch.start { (response, error) in
            
            activityIndicator.stopAnimating()
            UIApplication.shared.endIgnoringInteractionEvents()
            
            if response == nil
            {
                print("ERROR!")
            }
            else{
                //Remove all the annotations from the map
                let annotations = self.myMapView.annotations
                self.myMapView.removeAnnotations(annotations)
                
                //Getting data
                let latitude = response?.boundingRegion.center.latitude
                let longitute = response?.boundingRegion.center.longitude
                
                //craete annotation based on the above get data
                let annotation = MKPointAnnotation()
                annotation.title  =  searchBar.text
                //set the coordinate of the annotation
                annotation.coordinate = CLLocationCoordinate2DMake(latitude!, longitute! )
                //add this annotation to my map
                self.myMapView.addAnnotation(annotation)
                
                //Zooming in on an annotation
                let coordinate:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude!,longitute!)
                //Zooming capacity
                let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                //map going to display
                let region = MKCoordinateRegion(center: coordinate, span: span)
                self.myMapView.setRegion(region, animated: true)
                
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //back button
        //self.navigationController?.navigationBar.backItem?.title = "back"
        //navigationItem.backBarButtonItem = UIBarButtonItem(
            //title: "back", style: .plain, target: nil, action: nil)

        // Do any additional setup after loading the view.
        let backButton = UIBarButtonItem()
        
        backButton.title = "back"
        
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
}
