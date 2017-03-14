//
//  ViewController.swift
//  catch.me
//
//  Created by Ufuk Okuyucu on 3/4/17.
//  Copyright © 2017 Blizzard. All rights reserved.
//

import UIKit
import CoreLocation


class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        locationManager = CLLocationManager();
        locationManager.delegate = self
        
        if CLLocationManager.authorizationStatus() == CLAuthorizationStatus.notDetermined {
            self.locationManager.requestAlwaysAuthorization()
        }

        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation();
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func locationManager(manager: CLLocationManager!,
                         didChangeAuthorization status: CLAuthorizationStatus) {
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didVisit visit: CLVisit) {
//        vistaLocation.text = "\(visit.coordinate.latitude) \(visit.coordinate.longitude)"
//        vistaArrivalDate.text = "\(visit.arrivalDate)"
//        vistaDepartureDate.text = "\(visit.departureDate)"        
    }

    func locationManager(_ manager: CLLocationManager,
                         didUpdateLocations locations: [CLLocation]) {
        
//        let latestLocation: CLLocation = locations[locations.count - 1]
//        userLocation.text =
//            "\(latestLocation.coordinate.latitude) \(latestLocation.coordinate.longitude)";
//        
//        if locations.count > 1 {
//            print("locations count:", locations.count)
//        }
    }
    
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
//        print(error)
//        userLocation.text = error.localizedDescription
    }
    
}

