//
//  MealPlan.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 6/1/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

/**
 *  Represents a daily meal plan that the user setup for
 */
public struct MealPlan {
    
    var breakfast: MealProtocol
    var morningSnack: MealProtocol
    var lunch: MealProtocol
    var afternoonSnack: MealProtocol
    var dinner: MealProtocol
    
    /// Array of meals of the day
    var mealsOfTheDay: [MealProtocol]
    {
        get{
            return [self.breakfast, self.morningSnack, self.lunch, self.afternoonSnack, self.dinner]
        }
    }
    
    var dairyTotal: Int{
    
        get{
            return getTotalFromFoodGroup(FoodGroups.Dairy)
        }
    }
    
    init (breakfast: MealProtocol, morningSnack: MealProtocol, lunch: MealProtocol, afternoonSnack: MealProtocol, dinner: MealProtocol){
        
        self.breakfast      = breakfast
        self.morningSnack   = morningSnack
        self.lunch          = lunch
        self.afternoonSnack = afternoonSnack
        self.dinner         = dinner
        
    }
}

// MARK: - Totals
extension MealPlan{
    
    /**
     Returns the sum of all the quantities in a specific food group
     
     - parameter foodGroup: <#foodGroup description#>
     
     - returns: <#return value description#>
     */
    func getTotalFromFoodGroup(foodGroup: FoodGroups) -> Int{
        
        var returnValue = 0
        
        for meal in self.mealsOfTheDay {
            
            returnValue = returnValue + meal.getQuantityOfFoodGroup(foodGroup)
        }
    
        return returnValue
    }
    
}
