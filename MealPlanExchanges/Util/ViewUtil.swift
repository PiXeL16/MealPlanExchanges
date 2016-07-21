//
//  ViewUtil.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 6/7/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

// MARK: - Extension and utils for UI View
extension UIView {
    
    /**
     Loads a view from the nib
     
     - parameter nibName: nib nabe
     - parameter bundle:  bundle to load
     
     - returns: view
     */
    func loadViewFromNibNamed(nibName:String, bundle: NSBundle?) -> UIView {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }
    
}
