//
//  ViewController.swift
//  LocationDemo
//
//  Created by Florian Praile on 05/09/2018.
//  Copyright © 2018 Underside. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var positionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(forName: NSNotification.Name.deviceLocationUpdated, object: nil, queue: OperationQueue.main) { (notication) in
            guard let position = notication.userInfo?[DevicePositionUpdateInfo] as? CLLocation else{
                return
            }
            self.positionLabel.text = "\(position)"
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

