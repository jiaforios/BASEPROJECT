//
//  LocationViewController.swift
//  NBWatch
//
//  Created by admin on 2018/2/23.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit


class LocationViewController: BaseViewController,MAMapViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
 
        let mapView = MAMapView(frame:self.view.bounds)
        mapView.delegate = self
        view.addSubview(mapView)
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
