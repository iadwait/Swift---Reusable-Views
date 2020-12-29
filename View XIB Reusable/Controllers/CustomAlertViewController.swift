//
//  CustomAlertViewController.swift
//  View XIB Reusable
//
//  Created by Adwait Barkale on 29/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class CustomAlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnSuccessTapped(_ sender: UIButton) {
        AlertView.instance.showAlert(title: "Success", message: "This is Success Messgae", alertType: .Success)
    }
    
    @IBAction func btnFailureTapped(_ sender: UIButton) {
        AlertView.instance.showAlert(title: "Failure", message: "This is Failure Messgae", alertType: .Failure)
    }
    
}
