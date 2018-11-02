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
    
    @IBOutlet weak var washPriceLabel: UILabel!
    @IBOutlet weak var dryPriceLabel: UILabel!
    @IBOutlet weak var changeLabel: UITextView!
    
    var budget : Double = 0
    var budgetAmount : Int = 0
    var washPrice : Double = 0
    var dryPrice : Double = 0
    var dormChoice : String = ""
    var washNbr : Double = 0
    var dryNbr : Double = 0
    var washBudget : Double = 0
    var dryBudget : Double = 0
    var change : Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Circle button.
        newAmount.layer.shadowColor = UIColor.black.cgColor
        newAmount.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        newAmount.layer.masksToBounds = false
        newAmount.layer.shadowRadius = 1.0
        newAmount.layer.shadowOpacity = 0.5
        newAmount.layer.cornerRadius = 15
        
        budgetLabel.text = "Budget: $" + (String(format: "%.2f", budget))
        
        //Set prices.
        if(dormChoice == "Cedar"){
            washPrice = 1.00
            dryPrice = 0.75
        }
        else{
            washPrice = 1.00
            dryPrice = 1.00
        }
        
        let roundedBudget : Double = floor(budget)
//        print(budget)
//        print(roundedBudget)
        
        
        washBudget = roundedBudget / 2
        dryBudget = roundedBudget / 2
        
//        print("Wash budget = " + String(washBudget))
//        print("Dry budget = " + String(dryBudget))
        
        washNbr =  floor(washBudget / washPrice)
        dryNbr = floor(dryBudget / dryPrice)
        
//        print("Wash nbr = \(washNbr)")
//        print("Dry nbr = \(dryNbr)")
//        print("dryNbr * dryPrice = \(dryNbr*dryPrice)")
//      //  print(Double(washNbr*washPrice))
//        //print(dryNbr*dryPrice)
    
        change = budget - (washNbr * washPrice + dryNbr * dryPrice)
        print("BUDGET IS " + String(budget))
        print ("CHANGE IS " + String(change))
        
        changeLabel.text = "   Change: $" + (String(format: "%.2f", change))
        
        washLabel.text = String(Int(washNbr))
        dryLabel.text = String(Int(dryNbr))
        
        washPriceLabel.text = "Wash = $" + (String(format: "%.2f", washPrice))
        dryPriceLabel.text = "Dry = $" + (String(format: "%.2f", dryPrice))

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
