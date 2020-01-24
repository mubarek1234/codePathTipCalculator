//
//  ViewController.swift
//  tipCalculator
//
//  Created by Mubarek Mussa on 1/21/20.
//  Copyright © 2020 eventFind. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var totalLabel: UILabel!
   
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    var amountFromMood = ""
    var updatedAmount = ""
    var tipSegue = ""
    override func viewDidLoad() {
        super.viewDidLoad()
         //tipLabel.text = String(tipSegue)
        billField.text = amountFromMood
        totalLabel.text = updatedAmount
        tipLabel.text = tipSegue
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapScreen(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func editAmount(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

