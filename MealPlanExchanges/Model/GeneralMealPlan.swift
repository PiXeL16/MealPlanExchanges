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
public struct GeneralMealPlan : MealPlanProtocol {
    
    public var breakfast: Meal
    public var morningSnack: Meal
    public var lunch: Meal
    public var afternoonSnack: Meal
    public var dinner: Meal
    
    init (breakfast: Meal, morningSnack: Meal, lunch: Meal, afternoonSnack: Meal, dinner: Meal){
        
        self.breakfast      = breakfast
        self.morningSnack   = morningSnack
        self.lunch          = lunch
        self.afternoonSnack = afternoonSnack
        self.dinner         = dinner
        
    }
}

