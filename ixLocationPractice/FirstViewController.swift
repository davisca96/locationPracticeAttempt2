//
//  FirstViewController.swift
//  ixLocationPractice
//
//  Created by Claire Davis on 6/5/17.
//  Copyright © 2017 iXperience. All rights reserved.
//

import UIKit

//needed for Apple Map Kit Usage
import MapKit

//need to add CLLocationManager to be able to inherent from/use manager class
class FirstViewController: UIViewController, CLLocationManagerDelegate {

    //declare location manager for use throughout app
    //NEED ! after CLLocationManager
    var locationManager: CLLocationManager!
    
    //need to declare to use location
    var currentUserLocation: CLLocation!
    
    //declare map
    @IBOutlet weak var AppleMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //instantiate location manager
        locationManager = CLLocationManager()
        
        //assign delegate to self
        locationManager.delegate = self
        
        //set accuracy level
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        //request privacy access from user
        locationManager.requestAlwaysAuthorization()
      
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        // Get the users location from the array of locations
        let userLocation: CLLocation = locations[0] as CLLocation
        
        // You can call stopUpdatingLocation() to stop listening for location updates
        // manager.stopUpdatingLocation()
        
        print("user latitude = \(userLocation.coordinate.latitude)")
        print("user longitude = \(userLocation.coordinate.longitude)")
        
        // Store reference to the users location in the class instance (self)
        self.currentUserLocation = userLocation
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error)
    {
        // An error occurred trying to retrieve users location
        print("Error \(error)")
    }
}

