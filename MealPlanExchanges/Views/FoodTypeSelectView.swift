//
//  FoodTypeSelectView.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 6/7/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit
import GMStepper

@IBDesignable class FoodTypeSelectView: UIView {
    
    
    /// View to hold the the return of the xib file
    private var view: UIView!
    
    @IBOutlet weak var foodTypeNameLabel: UILabel!
    
    @IBOutlet weak var foodTypeStepper: GMStepper!
    
    @IBOutlet weak var foodTypeImage: UIImageView!
    
    @IBInspectable var quantity : Double{
        
        get{
            return foodTypeStepper.value
        }
        
        set{
            self.foodTypeStepper.value = newValue
        }
    }
    
    /**
     Init with frame
     
     - parameter frame: <#frame description#>
     
     - returns: <#return value description#>
     */
    override init(frame: CGRect) {
        
        
        super.init(frame: frame)
        
        xibSetup()
    }
    
    /**
     Init with coder
     
     - parameter aDecoder: <#aDecoder description#>
     
     - returns: <#return value description#>
     */
    required init?(coder aDecoder: NSCoder) {
        
        
        super.init(coder: aDecoder)
        
        xibSetup()
    }
    
    
    func xibSetup() {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        view = loadViewFromNibNamed("FoodTypeSelectView", bundle:bundle)
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
    
    
    /**
     Setup the view from the xib file
     */
//    func xibSetup() {
//        
//        view = FoodTypeSelectView.loadFromNibNamed("FoodTypeSelectView", bundle: NSBundle(forClass: self.dynamicType))
//        
//        // use bounds not frame or it'll be offset
//        view.frame = bounds
//        
//        // Make the view stretch with containing view
//        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
//        // Adding custom subview on top of our view (over any custom drawing > see note below)
//        addSubview(view)
//    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
