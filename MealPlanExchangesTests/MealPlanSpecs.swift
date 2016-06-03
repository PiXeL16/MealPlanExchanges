//
//  MealPlanSpecs.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 6/2/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import Foundation
import Nimble
import Quick
import MealPlanExchanges

//Specs for the delayer class
class MealPlanSpecs: QuickSpec {
    
    override func spec() {
        
        describe("Meal plan model initial specs") {
            
            it("initial quantity is 0"){
                
                let generalMealPlan = GeneralMealPlan()
                
                expect(generalMealPlan.breakfast.dairy.quantity).to(equal(0))
                
            }
            
            it("initial quantity is 5"){
                
                var generalMealPlan = GeneralMealPlan()
                
                generalMealPlan.breakfast.dairy.quantity = 5
                
                expect(generalMealPlan.breakfast.dairy.quantity).to(equal(5))
                
            }
            
            it("initial multiple constructor"){
                
                var breakfast = Breakfast()
                
                breakfast.dairy.quantity = 5
                
                var generalMealPlan = GeneralMealPlan(breakfast: breakfast, morningSnack: MorningSnack(), lunch: Lunch(), afternoonSnack: AfternoonSnack(), dinner: Dinner())
                
                expect(generalMealPlan.breakfast.dairy.quantity).to(equal(5))
                
            }
            
            it("has meals initially"){
                
                let generalMealPlan = GeneralMealPlan()
                
                expect(generalMealPlan.mealsOfTheDay).toNot(beNil())
                
                expect(generalMealPlan.mealsOfTheDay.count).to(beGreaterThan(0))
            }
            
            it("has meals initially"){
                
                let generalMealPlan = GeneralMealPlan()
                
                expect(generalMealPlan.mealsOfTheDay).toNot(beNil())
                
                expect(generalMealPlan.mealsOfTheDay.count).to(beGreaterThan(0))
            }
            
            it("get sums property of dairy")
            {
                
                var generalMealPlan = GeneralMealPlan()
                
                var breakfast = Breakfast()
                breakfast.dairy.quantity = 5
                
                var dinner = Dinner()
                dinner.dairy.quantity = 5
                
                generalMealPlan.breakfast = breakfast
                
                generalMealPlan.dinner = dinner
                
                expect(generalMealPlan.dairyTotal).to(equal(10))
                
            }
            
            
            it("get sums of food types")
            {
                
                var generalMealPlan = GeneralMealPlan()
                
                var breakfast = Breakfast()
                breakfast.dairy.quantity = 5
                
                var dinner = Dinner()
                dinner.dairy.quantity = 5
                
                generalMealPlan.breakfast = breakfast
                
                generalMealPlan.dinner = dinner
                
                expect(generalMealPlan.getTotalFromFoodType(FoodTypes.Dairy)).to(equal(10))
                
            }
            
            
            it("get sums of food types")
            {
                
                let generalMealPlan = GeneralMealPlan()
                
                expect(generalMealPlan.getTotalFromFoodType(FoodTypes.Fruit
                    )).to(equal(0))
                
            }
            
            

        }
    }

}
