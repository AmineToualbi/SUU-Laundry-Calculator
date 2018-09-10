//
//  DormViewController.swift
//  SUU Laundry Calculator
//
//  Created by TOUALBI Amine  on 04/09/2018.
//  Copyright © 2018 ToualbiApps. All rights reserved.
//

import UIKit

class DormViewController: UIViewController {

    @IBOutlet weak var newAmount: UIButton!
    @IBOutlet weak var cedarBtn: UIButton!
    @IBOutlet weak var ecclesBtn: UIButton!
    @IBOutlet weak var foundersBtn: UIButton!
    @IBOutlet weak var ponderosaBtn: UIButton!
    var myDorm : String = ""
    var goBack : Bool = false
    var budget : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Circle button.
        newAmount.layer.shadowColor = UIColor.black.cgColor
        newAmount.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        newAmount.layer.masksToBounds = false
        newAmount.layer.shadowRadius = 1.0
        newAmount.layer.shadowOpacity = 0.5
        newAmount.layer.cornerRadius = 15

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func dormChoice(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1{
            print("CEDAR")
            myDorm = "Cedar"
            performSegue(withIdentifier: "goToSecond", sender: self)

        }
       else if ((sender as AnyObject).tag == 2){
            print("ECCLES")
            myDorm = "Eccles"
            performSegue(withIdentifier: "goToSecond", sender: self)
        }
        else if ((sender as AnyObject).tag == 3){
            print("PONDEROSA")
            myDorm = "Ponderosa"
            performSegue(withIdentifier: "goToSecond", sender: self)
        }
        else if ((sender as AnyObject).tag == 4){
            print("FOUNDERS")
            myDorm = "Founders"
            performSegue(withIdentifier: "goToSecond", sender: self)
        }
        else if((sender as AnyObject).tag == 5){
            performSegue(withIdentifier: "goToFirst", sender: self)
        }
       
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToFirst"){
            let viewController = segue.destination as! ViewController
        }
        else if(segue.identifier == "goToSecond"){
            let secondViewController = segue.destination as! SecondViewController
            secondViewController.dormChoice = myDorm
            secondViewController.budget = budget
        }
    }
 

}
