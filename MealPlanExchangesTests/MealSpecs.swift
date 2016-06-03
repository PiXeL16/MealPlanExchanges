//
//  MealSpecs.swift
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
class MealSpecs: QuickSpec {
    
    override func spec() {
        
        describe("Meal model initial specs") {
            
            it("initial quantity is 0"){
                
                let afternoonSnack = AfternoonSnack()
                
                expect(afternoonSnack.dairy.quantity).to(equal(0))
                
            }
            
            it("initial type to be correct"){
                
                let afternoonSnack = AfternoonSnack()
                
                expect(afternoonSnack.dairy.group).to(equal(FoodTypes.Dairy))
                
            }
            
            it("has valid foods"){
                
                let afternoonSnack = AfternoonSnack()
                
                expect(afternoonSnack.foods).toNot(beNil())
                expect(afternoonSnack.foods.count).to(beGreaterThan(0))
                
            }
            
            it("get proper count from food type"){
                
                var afternoonSnack = AfternoonSnack()
                afternoonSnack.dairy.quantity = 5
                
                expect(afternoonSnack.getQuantityOfFoodGroup(FoodTypes.Dairy)).to(equal(5))
                
            }

        }
        
    }
    
}
