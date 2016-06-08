//
//  FoodGroup.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 6/2/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit


/**
 *  Represents a food group and the quantity that the food group has
 */
public struct FoodGroup {
    
   public var quantity: Double = 0
   public var group: FoodTypes = FoodTypes.Other
    
    /**
     Initializer of the quantity and the group that the quantity is assign
     
     - parameter quantity: <#quantity description#>
     - parameter group:    <#group description#>
     
     - returns: <#return value description#>
     */
    init(quantity: Double = 0, group: FoodTypes = FoodTypes.Other){
        
        self.quantity = quantity
        self.group = group
    }
}
