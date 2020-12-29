//
//  CustomView.swift
//  View XIB Reusable
//
//  Created by Adwait Barkale on 29/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {

    @IBOutlet var lblTitle: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureView()
    }
    
    func configureView()
    {
        guard let view = self.loadViewFromNib(nibName: "CustomView") else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func configureView(title: String)
    {
        self.lblTitle.text = title
        
    }

}
