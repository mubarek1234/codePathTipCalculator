//
//  FirstPageViewController.swift
//  tipCalculator
//
//  Created by Mubarek Mussa on 1/23/20.
//  Copyright © 2020 eventFind. All rights reserved.
//

import UIKit

class FirstPageViewController: UIViewController {

    @IBOutlet weak var moneyAmount: UITextField!
    var amount = 0.0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendAmount(_ sender: Any) {
       self.amount = Double(moneyAmount.text!) ?? 0
        performSegue(withIdentifier: "amountToMood", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is MoodsViewController
        {
            let vc = segue.destination as? MoodsViewController
            vc?.firstAmount = Double(self.amount)
            print(vc?.firstAmount)
        }
    } 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
