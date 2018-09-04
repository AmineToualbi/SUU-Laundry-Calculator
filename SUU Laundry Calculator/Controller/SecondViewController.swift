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
    var budget : String = ""
    var washPrice : Double = 0
    var dryPrice : Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Circle button.
        newAmount.layer.shadowColor = UIColor.black.cgColor
        newAmount.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        newAmount.layer.masksToBounds = false
        newAmount.layer.shadowRadius = 1.0
        newAmount.layer.shadowOpacity = 0.5
        newAmount.layer.cornerRadius = 15
        
        budgetLabel.text = "Budget: $" + budget
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
 
 
    
    
    
    
    
}
