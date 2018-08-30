//
//  ViewController.swift
//  SUU Laundry Calculator
//
//  Created by TOUALBI Amine  on 18/08/2018.
//  Copyright © 2018 ToualbiApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculateBtn: UIButton!
    @IBOutlet weak var enteredAmount: UITextField!
     var amount : Double = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Makes circle button with shadow. 
        calculateBtn.layer.shadowColor = UIColor.black.cgColor
        calculateBtn.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        calculateBtn.layer.masksToBounds = false
        calculateBtn.layer.shadowRadius = 1.0
        calculateBtn.layer.shadowOpacity = 0.5
        calculateBtn.layer.cornerRadius = 15
        
        //Checks for tap & applies fct dismissKeyboard.
        let outsideTap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard(recognizer:)))
        //Add gesture to the view.
        self.view.addGestureRecognizer(outsideTap)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        
        //Format 21,7 to 21.7 for instance.
        let number = NumberFormatter().number(from: enteredAmount.text!)
        if let number = number {
            amount = Double(truncating: number)
        }
        
        print(amount)
    
    }
    
    @objc func dismissKeyboard(recognizer : UITapGestureRecognizer){
        
        view.endEditing(true)
        
    }


}

