//
//  AlertView.swift
//  View XIB Reusable
//
//  Created by Adwait Barkale on 29/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import Foundation
import UIKit

class AlertView: UIView
{
    
    static let instance = AlertView()
    
    @IBOutlet var parentView: UIView!
    @IBOutlet var alertView: UIView!
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var lblMessage: UILabel!
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnDone: UIButton!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        guard let alertView = self.loadViewFromNib(nibName: "AlertView") else {
//            return
//        }
        
        Bundle.main.loadNibNamed("AlertView", owner: self, options: nil)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func commonInit()
    {
        imgView.layer.cornerRadius = 30
        imgView.layer.borderColor = UIColor.white.cgColor
        imgView.layer.borderWidth = 2
        
        parentView.frame = .init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        parentView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
    }
    
    enum AlertType
    {
        case Success
        case Failure
    }
    
    func showAlert(title: String,message: String,alertType: AlertType)
    {
        self.lblTitle.text = title
        self.lblMessage.text = message
        
        switch alertType {
        case .Success:
            self.imgView.image = UIImage(named: "locationMarker")
            self.btnDone.backgroundColor = .green
            self.btnDone.titleLabel?.textColor = .white
        case .Failure:
            self.imgView.image = UIImage(named: "norecordfound")
            self.btnDone.backgroundColor = .red
            self.btnDone.titleLabel?.textColor = .white
        }
        
        UIApplication.shared.keyWindow?.addSubview(parentView)
    }
    
}
