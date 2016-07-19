//
//  MealPlanSetupHeaderTableViewCell.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 7/18/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

public class MealPlanSetupHeaderTableViewCell: UITableViewCell, ReusableView, NibLoadableView {

    @IBOutlet weak public var mealIconImageView: UIImageView!
    
    @IBOutlet weak public var mealNameLabel: UILabel!
    
    /**
     Configure the cell
     
     - parameter meal: <#meal description#>
     */
    func configure(withMeal meal:String){
        
        mealNameLabel.text = meal
        
    }
    
    public override func awakeFromNib() {

        super.awakeFromNib()
        // Initialization code
    }

    public override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
