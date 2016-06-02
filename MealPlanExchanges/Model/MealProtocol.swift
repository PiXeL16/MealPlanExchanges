//
//  MealProtocol.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 6/2/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

/**
 *  Protocol with the values of what a meal should have
 */
protocol MealProtocol {
    
    var type:  MealsOfTheDay { get set }
    
    var dairy: FoodGroup     { get set }
    var meat : FoodGroup     { get set }
    var flour: FoodGroup     { get set }
    var sugar: FoodGroup     { get set }
    var fruit: FoodGroup     { get set }
    var vegetable: FoodGroup { get set }
    
    init()
    init(dairy: FoodGroup, meat: FoodGroup, flour: FoodGroup, sugar: FoodGroup, fruit: FoodGroup, vegetable: FoodGroup)

}

// MARK: - Extension to get a default initializer
extension MealProtocol{
    
    
    var foods: [FoodGroup]{
        
        get{
            return [dairy, meat, flour, sugar, fruit, vegetable]
        }
    }
    
    init(dairy: FoodGroup, meat: FoodGroup, flour: FoodGroup, sugar: FoodGroup, fruit: FoodGroup, vegetable: FoodGroup)
    {
        self.init()
        
        self.dairy     = dairy
        self.meat      = meat
        self.flour     = flour
        self.sugar     = sugar
        self.fruit     = fruit
        self.vegetable = vegetable
        
    }
    
    /**
     Returns the total of quantity of a food group
     
     - parameter foodGroup: <#foodGroup description#>
     
     - returns: <#return value description#>
     */
    func getQuantityOfFoodGroup(foodGroup: FoodGroups) -> Int{
        
        var returnValue = 0
        
        for food in foods {
            
            if food.group == foodGroup{
                returnValue = food.quantity
                break
            }
        }
        
        return returnValue
    }
}
