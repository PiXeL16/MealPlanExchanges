//
//  AfternoonSnack.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 6/2/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

/**
 *  Afternoon Snack
 */
public struct AfternoonSnack : Meal {
    
    public let type: MealsOfTheDay = MealsOfTheDay.AfternoonSnack
    
    public var dairy: FoodGroup = FoodGroup(group: FoodTypes.Dairy)
    public var meat : FoodGroup = FoodGroup(group: FoodTypes.Meat)
    public var flour: FoodGroup = FoodGroup(group: FoodTypes.Flour)
    public var sugar: FoodGroup = FoodGroup(group: FoodTypes.Sugar)
    public var fruit: FoodGroup = FoodGroup(group: FoodTypes.Fruit)
    public var vegetable: FoodGroup = FoodGroup(group: FoodTypes.Vegetable)
    
    public init(){}
    
    
}