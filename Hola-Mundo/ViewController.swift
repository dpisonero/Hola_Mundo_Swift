//
//  ViewController.swift
//  Hola-Mundo
//
//  Created by g822 DIT UPM on 11/9/18.
//  Copyright © 2018 g822 DIT UPM. All rights reserved.
//

import UIKit

import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateHola(_ sender: UIButton) {
        msgLabel.text = "Hola"
        slider.value = 0.5
        mapView.mapType = MKMapType.hybrid
        let center = CLLocationCoordinate2D(latitude: 40.689493, longitude: -74.04453)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }

    @IBAction func updateMundo(_ sender: UIButton) {
        msgLabel.text = "Mundo"
        mapView.mapType = MKMapType.satellite
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
    
    @IBAction func updateSol(_ sender: UIButton) {
        mapView.mapType = MKMapType.hybrid
        let center = CLLocationCoordinate2D(latitude: 40.417176, longitude: -3.703528)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
}

