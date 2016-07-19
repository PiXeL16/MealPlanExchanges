//
//  ReusableView.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 7/19/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

/// Protocol to be use to handle the reusable views (TableViewCells, CollectionViews, etc)
public protocol ReusableView: class {
    
    static var defaultReuseIdentifier:String {get}
}

// MARK: - Use the name of the class as the reuse identifier
public extension ReusableView where Self: UIView{
    
    public static var defaultReuseIdentifier:String{
        
        return NSStringFromClass(self)
    }
}
