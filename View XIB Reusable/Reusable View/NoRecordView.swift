//
//  NoRecordView.swift
//  View XIB Reusable
//
//  Created by Adwait Barkale on 29/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class NoRecordView: UIView {


    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var imgView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func commonInit()
    {
        let viewFromXib = Bundle.main.loadNibNamed("NoRecordView", owner: self, options: nil)![0] as! UIView
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
    }
    
}
