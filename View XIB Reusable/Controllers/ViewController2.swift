//
//  ViewController2.swift
//  View XIB Reusable
//
//  Created by Adwait Barkale on 29/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

/*
 1.Create Swift File
 2.Create XIB File
 3.Set Owner to Swift File Name
 4.Size - Freeform adjust Height as per need
 5.Design and Make Outlets
 6.Make Class @Designable and do basic configurations
 */


class ViewController2: UIViewController {

    @IBOutlet var custView1: CustomView!
    @IBOutlet var custView2: CustomView!
    @IBOutlet var custView3: CustomView!
    
    @IBOutlet var noInternetView: NoInternetConnection!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        custView1.configureView(title: "First Custom View")
        custView2.configureView(title: "Second Custom View")
        custView3.configureView(title: "Third Custom View")
        
        noInternetView.configureWith(image: "locationMarker", title: "Location Mark")
        
    }

}
