//
//  UIView + Extensiom.swift
//  View XIB Reusable
//
//  Created by Adwait Barkale on 29/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import Foundation
import UIKit

extension UIView
{
    
    func loadViewFromNib(nibName: String) -> UIView?
    {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
}
