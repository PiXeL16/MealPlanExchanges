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
public protocol Meal {
    
    var type:  MealsOfTheDay { get }
    
    var dairy: FoodGroup     { get set }
    var meat : FoodGroup     { get set }
    var flour: FoodGroup     { get set }
    var sugar: FoodGroup     { get set }
    var fruit: FoodGroup     { get set }
    var vegetable: FoodGroup { get set }
    
    init()


}

// MARK: - Extension to get a default initializer
extension Meal{
    
    
    public var foods: [FoodGroup]{
        
        get{
            return [dairy, meat, flour, sugar, fruit, vegetable]
        }
    }
    
    
    /**
     Returns the total of quantity of a food group
     
     - parameter foodGroup: <#foodGroup description#>
     
     - returns: <#return value description#>
     */
    public func getQuantityOfFoodGroup(foodGroup: FoodTypes) -> Double{
        
        var returnValue:Double = 0
        
        for food in foods {
            
            if food.group == foodGroup{
                returnValue = food.quantity
                break
            }
            
        }
        
        return returnValue
    }
}
