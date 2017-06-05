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


class FirstViewController: UIViewController {

    @IBOutlet weak var AppleMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

