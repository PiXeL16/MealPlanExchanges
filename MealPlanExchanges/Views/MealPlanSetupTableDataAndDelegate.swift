//
//  MealPlanSetupTableDataSource.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 7/18/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit
import CocoaLumberjack

class MealPlanSetupTableDataAndDelegate: NSObject,UITableViewDataSource, UITableViewDelegate {
    
    
    enum MealPlanSections: Int{
        case Header, Description, Items
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        var returnValue:Int = 1
        
        switch MealPlanSections(rawValue: section)!{
            
        case .Header:
            
            returnValue = 1
            
        case .Description:
            
            returnValue = 1
            
        default:
            
            returnValue = 1
            
        }
        
        return returnValue
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 3
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell:UITableViewCell = UITableViewCell()
    
        switch MealPlanSections(rawValue: indexPath.section)!{
            
        case .Header:
            
            let headerCell: MealPlanSetupHeaderTableViewCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
            
            headerCell.configure(withMeal: "Breakfast")
            
            cell = headerCell
            
        case .Description:
            
            let descriptionCell: MealPlanSetupDescriptionTableViewCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
            
            descriptionCell.configure(withDescription: "This is a description long very long lng lnalsdlafdslalsdf asdfasdf asdf ")
            
            cell = descriptionCell
            
        default:
            
            DDLogError("Cell cant be fetched since index is wrong.")
            
        }
        
        
//        let cell = tableView.dequeueReusableCellWithIdentifier(MealPlanSetupHeaderTableViewCell.reuseIdentifier, forIndexPath: indexPath) as! MealPlanSetupHeaderTableViewCell
        
        
        
        
        // Configure the cell...
        
        return cell
    }

}

// MARK: - TableViewDelegate extension
extension MealPlanSetupTableDataAndDelegate{
    
//    
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        
//        
//        switch MealPlanSections(rawValue: indexPath.row)! {
//        case .Header:
//            
//            return 205
//            
//        case .Description:
//            
//            return 44
//            
//        default:
//            
//            DDLogError("Cell cant be fetched since index is wrong.")
//            
//        }
//        
//        return 44;
//        
//    }
    
}
