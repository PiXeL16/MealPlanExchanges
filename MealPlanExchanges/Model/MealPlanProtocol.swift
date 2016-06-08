//
//  MealPlanProtocol.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 6/2/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

/**
 *  Meals plan protocol
 */
public protocol MealPlanProtocol {
    
    var breakfast: Meal {get set}
    var morningSnack: Meal {get set}
    var lunch: Meal {get set}
    var afternoonSnack: Meal {get set}
    var dinner: Meal {get set}
    
}

extension MealPlanProtocol{
    
    /// Array of meals of the day
    public var mealsOfTheDay: [Meal]{
    
        get{
            return [self.breakfast, self.morningSnack, self.lunch, self.afternoonSnack, self.dinner]
        }
    }
    
    public var dairyTotal: Double{
        
        get{
            return getTotalFromFoodType(FoodTypes.Dairy)
        }
    }
    
    
    /**
     Returns the sum of all the quantities in a specific food group
     
     - parameter foodGroup: <#foodGroup description#>
     
     - returns: <#return value description#>
     */
    public func getTotalFromFoodType(foodType: FoodTypes) -> Double{
        
        var returnValue:Double = 0
        
        /**
         *  Map the array and get the quantity of Food group, then sum all of those values.s
         *
         *  @return <#return value description#>
         */
        returnValue = mealsOfTheDay.map({$0.getQuantityOfFoodGroup(foodType)}).reduce(0, combine: {$0 + $1})
        
        return returnValue
    }

    
}
