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
    var mealsOfTheDay: [Meal]{
    
        get{
            return [self.breakfast, self.morningSnack, self.lunch, self.afternoonSnack, self.dinner]
        }
    }
    
    var dairyTotal: Int{
        
        get{
            return getTotalFromFoodType(FoodTypes.Dairy)
        }
    }
    
    
    /**
     Returns the sum of all the quantities in a specific food group
     
     - parameter foodGroup: <#foodGroup description#>
     
     - returns: <#return value description#>
     */
    public func getTotalFromFoodType(foodType: FoodTypes) -> Int{
        
        var returnValue = 0
        
        for meal in mealsOfTheDay {
            
            returnValue = returnValue + meal.getQuantityOfFoodGroup(foodType)
        }
        
        return returnValue
    }

    
}
