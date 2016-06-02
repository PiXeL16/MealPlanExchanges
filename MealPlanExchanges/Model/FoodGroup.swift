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
    
    var quantity: Int = 0
    var group: FoodGroups = FoodGroups.Other
    
    /**
     Initializer of the quantity and the group that the quantity is assign
     
     - parameter quantity: <#quantity description#>
     - parameter group:    <#group description#>
     
     - returns: <#return value description#>
     */
    init(quantity: Int = 0, group: FoodGroups = FoodGroups.Other){
        
        self.quantity = quantity
        self.group = group
    }
}
