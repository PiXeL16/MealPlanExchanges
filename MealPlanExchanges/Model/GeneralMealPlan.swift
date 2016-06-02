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
    
    var breakfast: MealProtocol
    var morningSnack: MealProtocol
    var lunch: MealProtocol
    var afternoonSnack: MealProtocol
    var dinner: MealProtocol
    
    init (breakfast: MealProtocol, morningSnack: MealProtocol, lunch: MealProtocol, afternoonSnack: MealProtocol, dinner: MealProtocol){
        
        self.breakfast      = breakfast
        self.morningSnack   = morningSnack
        self.lunch          = lunch
        self.afternoonSnack = afternoonSnack
        self.dinner         = dinner
        
    }
}

