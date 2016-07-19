//
//  BreakfastMealPlanSetupViewController.swift
//  MealPlanExchanges
//
//  Created by Chris Jimenez on 7/18/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

class BreakfastMealPlanSetupViewController: UIViewController,UITableViewDelegate {
    
    
    @IBOutlet weak var mealPlanSetupTableView: UITableView!
    
    var breakfastDataSource:MealPlanSetupTableDataSource = MealPlanSetupTableDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mealPlanSetupTableView.register(MealPlanSetupHeaderTableViewCell.self)
        
        mealPlanSetupTableView.delegate = self
        mealPlanSetupTableView.dataSource = breakfastDataSource

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
