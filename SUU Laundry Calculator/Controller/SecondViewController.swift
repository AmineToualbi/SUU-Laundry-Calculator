//
//  SecondViewController.swift
//  SUU Laundry Calculator
//
//  Created by TOUALBI Amine  on 02/09/2018.
//  Copyright © 2018 ToualbiApps. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var newAmount: UIButton!
    @IBOutlet weak var budgetLabel: UITextView!
    @IBOutlet weak var dryLabel: UILabel!
    @IBOutlet weak var washLabel: UILabel!
    
    var budget : Double = 0
    var budgetAmount : Int = 0
    var washPrice : Double = 0
    var dryPrice : Double = 0
    var dormChoice : String = ""
    var washNbr : Int = 0
    var dryNbr : Int = 0
    var washBudget : Double = 0
    var dryBudget : Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Circle button.
        newAmount.layer.shadowColor = UIColor.black.cgColor
        newAmount.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        newAmount.layer.masksToBounds = false
        newAmount.layer.shadowRadius = 1.0
        newAmount.layer.shadowOpacity = 0.5
        newAmount.layer.cornerRadius = 15
        
        budgetLabel.text = "Budget: $" + String(budget)
        
        //Set prices.
        if(dormChoice == "Cedar"){
            washPrice = 1.00
            dryPrice = 0.75
        }
        else{
            washPrice = 1.00
            dryPrice = 1.00
        }
        
        budget = floor(budget)
        print(budget)
        
        washBudget = budget / 2
        dryBudget = budget / 2
        
        washNbr =  Int(floor(washBudget / washPrice))
        dryNbr = Int(floor(dryBudget / dryPrice))
        
        washLabel.text = String(washNbr)
        dryLabel.text = String(dryNbr)
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
 
 
    
    
    
    
    
}
