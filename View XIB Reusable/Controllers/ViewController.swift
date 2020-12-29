//
//  ViewController.swift
//  View XIB Reusable
//
//  Created by Adwait Barkale on 29/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var noRecView: NoRecordView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI()
    {
        //Programmatically
        let noRecordView = NoRecordView(frame: CGRect(x: 0, y: 0, width: 300, height: 230))
        noRecordView.center = self.view.center
        //noRecordView.imgView.image = UIImage(systemName: "person.fill")
        noRecordView.lblTitle.text = "No Internet Connecttion"
        self.view.addSubview(noRecordView)
        
        //Storyboard crashing
        //noRecView.lblTitle.text = "No Recoord"
        
    }

}

