//
//  MealPlanSetupTableDataSource.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 7/18/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

class MealPlanSetupTableDataSource: NSObject,UITableViewDataSource {
    
//    var rowData:[String]?
    
    
//        self.rowData = rowData
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell: MealPlanSetupHeaderTableViewCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
        
//        let cell = tableView.dequeueReusableCellWithIdentifier(MealPlanSetupHeaderTableViewCell.reuseIdentifier, forIndexPath: indexPath) as! MealPlanSetupHeaderTableViewCell
        
        
        cell.configure(withMeal: "test")
        
        // Configure the cell...
        
        return cell
    }

}
