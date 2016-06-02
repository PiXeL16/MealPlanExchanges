//
//  Breakfast.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 6/2/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

/**
 *  Breakfast struct information
 */
struct Breakfast: MealProtocol {
    
    var type = MealsOfTheDay.Breakfast
    
    var dairy: FoodGroup = FoodGroup(group: FoodGroups.Dairy)
    var meat : FoodGroup = FoodGroup(group: FoodGroups.Meat)
    var flour: FoodGroup = FoodGroup(group: FoodGroups.Flour)
    var sugar: FoodGroup = FoodGroup(group: FoodGroups.Sugar)
    var fruit: FoodGroup = FoodGroup(group: FoodGroups.Fruit)
    var vegetable: FoodGroup = FoodGroup(group: FoodGroups.Vegetable)
    
}
