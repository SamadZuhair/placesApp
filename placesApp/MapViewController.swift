//
//  MapViewController.swift
//  placesApp
//
//  Created by Vito Muhammed  on 4/8/22.
//

import UIKit
import MapKit
import CoreLocation
import CoreLocationUI
import RealmSwift
class MapViewController: UIViewController {
    let db = try! Realm()
    @IBOutlet weak var map: MKMapView!
    var location = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
        //make it as delegate
        location.delegate = self
        //MARK: Request the current location
        location.requestLocation()
        location.requestWhenInUseAuthorization()
        location.startUpdatingLocation()
      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func SaveLocation(_ sender: UIBarButtonItem) {
        print("saved")
    }
    
}
//MARK: Show the current location in map
extension MapViewController: CLLocationManagerDelegate {
    //the main funcation for location core
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locationLast = locations.last
        //make the center Of location
        Places.shared.userLatitut = (locationLast?.coordinate.latitude)!
        Places.shared.userLongigut = (locationLast?.coordinate.longitude)!
        let center = CLLocationCoordinate2D(latitude: (locationLast?.coordinate.latitude)!, longitude: (locationLast?.coordinate.longitude)!)
        //Make the current region and make the dont on screen
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        //set the region in map adding also the dont on screen 
        map.setRegion(region, animated: true)
        //show the current location of user
        map.showsUserLocation = true
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
