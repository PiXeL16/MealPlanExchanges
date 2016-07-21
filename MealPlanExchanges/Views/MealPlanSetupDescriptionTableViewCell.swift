//
//  MealPlanSetupDescriptionTableViewCell.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 7/20/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

class MealPlanSetupDescriptionTableViewCell: UITableViewCell,ReusableView, NibLoadableView {

    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    /**
     Configure the cell
     
     - parameter meal: <#meal description#>
     */
    func configure(withDescription description:String){
        
        descriptionLabel.text = description
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
