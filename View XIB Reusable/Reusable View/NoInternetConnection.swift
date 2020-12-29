//
//  NoInternetConnection.swift
//  View XIB Reusable
//
//  Created by Adwait Barkale on 29/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

@IBDesignable
class NoInternetConnection: UIView {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var lblTitle: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureView()
    }
    
    func configureView()
    {
        
        guard let noInternetView = self.loadViewFromNib(nibName: "NoInternetConnection") else { return }
        noInternetView.frame = self.bounds
        self.addSubview(noInternetView)
    }
    
    func configureWith(image: String,title: String)
    {
        self.imgView.image = UIImage(named: image)
        self.lblTitle.text = title
    }
    
}
