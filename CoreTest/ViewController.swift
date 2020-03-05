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
import AVFoundation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate{

    @IBOutlet weak var Gefunden: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    var poi = KaisersWegpunkt()
    var poi2 = Wegpunkt2()
    var poi3 = Wegpunkt3()
    var poi4 = Wegpunkt4()
    var poi5 = Wegpunkt5()
    var poi6 = Wegpunkt6()
    var audioMeldung = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
              Gefunden.isHidden = true
         locationManager.delegate = self
         locationManager.desiredAccuracy = kCLLocationAccuracyBest
         locationManager.requestAlwaysAuthorization()
         locationManager.startUpdatingLocation()
         mapView.showsUserLocation = true
        //self.mapView.delegate = self
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
        /*
         print("LAT:"+(latVal?.description)!)
         print("LON:"+(lonVal?.description)!)
         print()
         
         print("**** from locations:")
         print("LAT:"+(manager.location?.coordinate.latitude.description)!)
         print("LON:"+(manager.location?.coordinate.longitude.description)!)
         print()
         */
         
        self.poi.coordinate = CLLocationCoordinate2D(latitude: 52.50, longitude: 13.33)
               self.poi.title = "Kaiser Wegpunkt"
               self.poi.subtitle = "Hundesalon"
               mapView.addAnnotation(poi)
               
               
               self.poi2.coordinate = CLLocationCoordinate2D(latitude: 52.508422, longitude: 13.351565)
               self.poi2.title = "Position2"
               self.poi2.subtitle = "2. Position"
               mapView.addAnnotation(poi2)
        
               self.poi3.coordinate = CLLocationCoordinate2D(latitude: 52.509987, longitude: 13.351094)
               self.poi3.title = "Position3"
               self.poi3.subtitle = "3. Position"
               mapView.addAnnotation(poi3)
                  
               self.poi4.coordinate = CLLocationCoordinate2D(latitude: 52.518000, longitude: 13.379330)
               self.poi4.title = "Position4"
               self.poi4.subtitle = "4. Position"
               mapView.addAnnotation(poi4)
                 
               self.poi5.coordinate = CLLocationCoordinate2D(latitude: 52.516211, longitude: 13.382288)
               self.poi5.title = "Position5"
               self.poi5.subtitle = "5. Position"
               mapView.addAnnotation(poi5)
               self.poi6.coordinate = CLLocationCoordinate2D(latitude: 52.516682, longitude: 13.387436)
               self.poi6.title = "Position6"
               self.poi6.subtitle = "6. Position"
               mapView.addAnnotation(poi6)
         
       
        if(manager.location?.coordinate.latitude == poi6.coordinate.latitude && manager.location?.coordinate.longitude == poi6.coordinate.longitude){
            print("gefunden")
            
            Gefunden.isHidden = false;
            Gefunden.text = poi6.title! + " erreicht"
            let sound = Bundle.main.path(forResource: "speech.mp3", ofType: nil)
            let url = URL(fileURLWithPath: sound!)
            do {
                audioMeldung = try AVAudioPlayer(contentsOf: url)
                audioMeldung.play()
            }
            catch{
                print(error)
            }
             
            
        }
        if(manager.location?.coordinate.latitude == poi5.coordinate.latitude && manager.location?.coordinate.longitude == poi5.coordinate.longitude){
                  print("gefunden")
                  
                  Gefunden.isHidden = false;
                  Gefunden.text = poi5.title! + " erreicht"
                  let sound = Bundle.main.path(forResource: "speech.mp3", ofType: nil)
                  let url = URL(fileURLWithPath: sound!)
                  do {
                      audioMeldung = try AVAudioPlayer(contentsOf: url)
                      audioMeldung.play()
                  }
                  catch{
                      print(error)
                  }
                   
                  
              }
        if(manager.location?.coordinate.latitude == poi4.coordinate.latitude && manager.location?.coordinate.longitude == poi4.coordinate.longitude){
                  print("gefunden")
                  
                  Gefunden.isHidden = false;
                  Gefunden.text = poi4.title! + " erreicht"
                  let sound = Bundle.main.path(forResource: "speech.mp3", ofType: nil)
                  let url = URL(fileURLWithPath: sound!)
                  do {
                      audioMeldung = try AVAudioPlayer(contentsOf: url)
                      audioMeldung.play()
                  }
                  catch{
                      print(error)
                  }
                   
                  
              }
        if(manager.location?.coordinate.latitude == poi3.coordinate.latitude && manager.location?.coordinate.longitude == poi3.coordinate.longitude){
                  print("gefunden")
                  
                  Gefunden.isHidden = false;
                  Gefunden.text = poi3.title! + " erreicht"
                  let sound = Bundle.main.path(forResource: "speech.mp3", ofType: nil)
                  let url = URL(fileURLWithPath: sound!)
                  do {
                      audioMeldung = try AVAudioPlayer(contentsOf: url)
                      audioMeldung.play()
                  }
                  catch{
                      print(error)
                  }
                   
                  
              }
        if(manager.location?.coordinate.latitude == poi2.coordinate.latitude && manager.location?.coordinate.longitude == poi2.coordinate.longitude){
                  print("gefunden")
                  
                  Gefunden.isHidden = false;
                  Gefunden.text = poi2.title! + " erreicht"
                  let sound = Bundle.main.path(forResource: "speech.mp3", ofType: nil)
                  let url = URL(fileURLWithPath: sound!)
                  do {
                      audioMeldung = try AVAudioPlayer(contentsOf: url)
                      audioMeldung.play()
                  }
                  catch{
                      print(error)
                  }
                   
                  
              }
        if(manager.location?.coordinate.latitude == poi.coordinate.latitude && manager.location?.coordinate.longitude == poi.coordinate.longitude){
                  print("gefunden")
                  
                  Gefunden.isHidden = false;
                  Gefunden.text = poi.title! + " erreicht"
                  let sound = Bundle.main.path(forResource: "speech.mp3", ofType: nil)
                  let url = URL(fileURLWithPath: sound!)
                  do {
                      audioMeldung = try AVAudioPlayer(contentsOf: url)
                      audioMeldung.play()
                  }
                  catch{
                      print(error)
                  }
                   
                  
              }
        
             
     
         }

    @IBAction func aktuellePosition(_ sender: Any) {
        
        mapView.userTrackingMode = .follow
    }
    
}

