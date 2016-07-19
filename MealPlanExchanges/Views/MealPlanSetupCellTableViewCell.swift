//
//  MealPlanSetupCellTableViewCell.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 7/18/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit
import GMStepper

class MealPlanSetupCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var foodTypeNameLabel: UILabel!
    
    @IBOutlet weak var foodTypeIconImageView: UIImageView!
    
    @IBOutlet weak var foodTypeStepper: GMStepper!
    
    class var reuseIdentifier: String {
        get {
            return "UICustomTableViewCell"
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    
}
