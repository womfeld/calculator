//
//  ViewController.swift
//  calculator
//
//  Created by School on 11/24/20.
//

import UIKit


class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
        //print("hello")
        
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        //Get the bill amount
        
        let bill = Double(billField.text!) ?? 0
        
        
        //Calculate the tip and total
        
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        //Update the tip and total labels
        
        tipLabel.text = String(format: "$%.2f" , tip)
        totalLabel.text = String(format: "$%.2f" , total)
        
    }
    
}

