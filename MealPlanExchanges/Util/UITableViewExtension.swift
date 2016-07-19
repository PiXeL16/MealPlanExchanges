//
//  UITableViewExtension.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 7/19/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

// MARK: - Extension for the UITableView
extension UITableView {
    
    
    /**
     Registers a Nibfile in the tableViewCell
     
     - parameter _: <#_ description#>
     */
    func register<T: UITableViewCell where T: ReusableView>(_: T.Type) {
        registerClass(T.self, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    
    /**
     Register a nib with a identifier
     
     - parameter _:
     */
    func register<T: UITableViewCell where T: ReusableView, T: NibLoadableView>(_: T.Type) {
        let bundle = NSBundle(forClass: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
    
        registerNib(nib, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    /**
     Dequeu the cell with the identifier
     
     - parameter indexPath:
     
     - returns:
     */
    func dequeueReusableCell<T: UITableViewCell where T: ReusableView>(forIndexPath indexPath: NSIndexPath) -> T {
        guard let cell = dequeueReusableCellWithIdentifier(T.defaultReuseIdentifier, forIndexPath: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        
        return cell
    }
    
}
