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
protocol MealPlanProtocol {
    
    var breakfast: MealProtocol {get set}
    var morningSnack: MealProtocol {get set}
    var lunch: MealProtocol {get set}
    var afternoonSnack: MealProtocol {get set}
    var dinner: MealProtocol {get set}
    
}

extension MealPlanProtocol{
    
    /// Array of meals of the day
    var mealsOfTheDay: [MealProtocol]{
    
        get{
            return [self.breakfast, self.morningSnack, self.lunch, self.afternoonSnack, self.dinner]
        }
    }
    
    var dairyTotal: Int{
        
        get{
            return getTotalFromFoodGroup(FoodGroups.Dairy)
        }
    }
    
    
    /**
     Returns the sum of all the quantities in a specific food group
     
     - parameter foodGroup: <#foodGroup description#>
     
     - returns: <#return value description#>
     */
    func getTotalFromFoodGroup(foodGroup: FoodGroups) -> Int{
        
        var returnValue = 0
        
        for meal in mealsOfTheDay {
            
            returnValue = returnValue + meal.getQuantityOfFoodGroup(foodGroup)
        }
        
        return returnValue
    }

    
}
