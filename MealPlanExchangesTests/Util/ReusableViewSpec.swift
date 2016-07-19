//
//  ReusableViewSpec.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 7/19/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

import Nimble
import Quick
import MealPlanExchanges

//Specs for the delayer class
class ReusableViewSpec: QuickSpec {
    
    override func spec() {
        
        describe("ReusableViewSpec") {
            
            it("reusable identifier is not null"){
                
                
                expect(MealPlanSetupHeaderTableViewCell.defaultReuseIdentifier).toNot(beEmpty())
                
                expect(MealPlanSetupHeaderTableViewCell.defaultReuseIdentifier).to(equal("MealPlanExchanges.MealPlanSetupHeaderTableViewCell"))
                
            }
            
            
            it("nib loadable is not null"){
                
                expect(MealPlanSetupHeaderTableViewCell.nibName).toNot(beEmpty())
                
            expect(MealPlanSetupHeaderTableViewCell.nibName).to(equal("MealPlanSetupHeaderTableViewCell"))
                
            }
        }
    }
    
}

