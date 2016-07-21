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
class UIColorExtesionSpec: QuickSpec {
    
    override func spec() {
        
        describe("Color extension spec") {
            
            it("Colors are not null"){
                
                expect(UIColor.heartPink()).toNot(beNil())
                
            }
            
        }
    }
}

