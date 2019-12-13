//
//  ViewController.swift
//  CoreTest
//
//  Created by Redlich, Sven on 13.12.19.
//  Copyright © 2019 Redlich, Sven. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate{

    
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
    
         locationManager.delegate = self
         locationManager.desiredAccuracy = kCLLocationAccuracyBest
         locationManager.requestAlwaysAuthorization()
         locationManager.startUpdatingLocation()
         mapView.showsUserLocation = true
        //mapView.delegate = self
        mapView.userTrackingMode = .follow
      
        
    
    
    }


 

    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        
        let currentLocation = userLocation.coordinate
        self.mapView.region = MKCoordinateRegion(center: currentLocation, latitudinalMeters: 100, longitudinalMeters: 100)
    }
 
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
     
         let loc = locations.last
         let latVal = loc?.coordinate.latitude
         let lonVal = loc?.coordinate.longitude
         
         print("LAT:"+(latVal?.description)!)
         print("LON:"+(lonVal?.description)!)
         print()
         
         print("**** from locations:")
         print("LAT:"+(manager.location?.coordinate.latitude.description)!)
         print("LON:"+(manager.location?.coordinate.longitude.description)!)
         print()
         
         
             
     
         }


}

