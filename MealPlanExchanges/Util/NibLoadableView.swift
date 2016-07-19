//
//  NibLoadableView.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 7/19/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

public protocol NibLoadableView: class {
    
     static var nibName:String { get }

}

public extension NibLoadableView where Self: UIView{
    
    public static var nibName:String{
        
        return String(self)
    }
    
}
