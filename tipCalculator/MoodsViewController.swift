//
//  MoodsViewController.swift
//  tipCalculator
//
//  Created by Mubarek Mussa on 1/21/20.
//  Copyright © 2020 eventFind. All rights reserved.
//

import UIKit

class MoodsViewController: UIViewController {

    @IBOutlet weak var happyMoodFood: UIButton!
    @IBOutlet weak var neutralMoodFood: UIButton!
    @IBOutlet weak var sadMoodFood: UIButton!
    
    @IBOutlet weak var happyMoodService: UIButton!
    @IBOutlet weak var neutralMoodService: UIButton!
    @IBOutlet weak var sadMoodService: UIButton!
    
    @IBOutlet weak var happyMood: UIButton!
    @IBOutlet weak var neutralMood: UIButton!
    @IBOutlet weak var sadMood: UIButton!
    
    @IBOutlet weak var foodQualityView: UIView!
    @IBOutlet weak var serviceQualityView: UIView!
    @IBOutlet weak var moodQualityView: UIView!
    
    var sumTotal = 0.0
    let tipValue = [0.15,0.18,0.2]
    var firstAmount = 0.0;
    var totalAmount = "";
    var recommendedTip = 0;
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func happyFood(_ sender: Any) {
        let happyImage = UIImage(named: "happyFaceFilled") as! UIImage
        let sadImage = UIImage(named: "sadFace") as! UIImage
        let neutralImage = UIImage(named: "neutralFace") as! UIImage
        happyMoodFood.setImage(happyImage, for: UIControl.State.normal)
        neutralMoodFood.setImage(neutralImage, for: UIControl.State.normal)
        sadMoodFood.setImage(sadImage, for: UIControl.State.normal)
        sumTotal+=0.20;
    }
    
    @IBAction func neutralFood(_ sender: Any) {
        let happyImage = UIImage(named: "happyFace") as! UIImage
        let sadImage = UIImage(named: "sadFace") as! UIImage
        let neutralImage = UIImage(named: "neutralFaceFilled") as! UIImage
        happyMoodFood.setImage(happyImage, for: UIControl.State.normal)
        neutralMoodFood.setImage(neutralImage, for: UIControl.State.normal)
        sadMoodFood.setImage(sadImage, for: UIControl.State.normal)
        sumTotal+=0.18
    }
    @IBAction func sadFood(_ sender: Any) {
        let happyImage = UIImage(named: "happyFace") as! UIImage
        let sadImage = UIImage(named: "sadFaceFilled") as! UIImage
        let neutralImage = UIImage(named: "neutralFace") as! UIImage
        happyMoodFood.setImage(happyImage, for: UIControl.State.normal)
        neutralMoodFood.setImage(neutralImage, for: UIControl.State.normal)
        sadMoodFood.setImage(sadImage, for: UIControl.State.normal)
        sumTotal+=0.15;
        
    }
   
    @IBAction func serviceHappy(_ sender: Any) {
        let happyImage = UIImage(named: "happyFaceFilled") as! UIImage
        let sadImage = UIImage(named: "sadFace") as! UIImage
        let neutralImage = UIImage(named: "neutralFace") as! UIImage
        happyMoodService.setImage(happyImage, for: UIControl.State.normal)
        neutralMoodService.setImage(neutralImage, for: UIControl.State.normal)
        sadMoodService.setImage(sadImage, for: UIControl.State.normal)
        sumTotal+=0.20
        
    }
    
    @IBAction func serviceSad(_ sender: Any) {
        let happyImage = UIImage(named: "happyFace") as! UIImage
        let sadImage = UIImage(named: "sadFaceFilled") as! UIImage
        let neutralImage = UIImage(named: "neutralFace") as! UIImage
        happyMoodService.setImage(happyImage, for: UIControl.State.normal)
        neutralMoodService.setImage(neutralImage, for: UIControl.State.normal)
        sadMoodService.setImage(sadImage, for: UIControl.State.normal)
        sumTotal+=0.15;
    }
    
    
    @IBAction func serviceNeutral(_ sender: Any) {
        let happyImage = UIImage(named: "happyFace") as! UIImage
        let sadImage = UIImage(named: "sadFace") as! UIImage
        let neutralImage = UIImage(named: "neutralFaceFilled") as! UIImage
        happyMoodService.setImage(happyImage, for: UIControl.State.normal)
        neutralMoodService.setImage(neutralImage, for: UIControl.State.normal)
        sadMoodService.setImage(sadImage, for: UIControl.State.normal)
        sumTotal+=0.18
    }
    
    
    @IBAction func moodHappy(_ sender: Any) {
        let happyImage = UIImage(named: "happyFaceFilled") as! UIImage
        let sadImage = UIImage(named: "sadFace") as! UIImage
        let neutralImage = UIImage(named: "neutralFace") as! UIImage
        happyMood.setImage(happyImage, for: UIControl.State.normal)
        neutralMood.setImage(neutralImage, for: UIControl.State.normal)
        sadMood.setImage(sadImage, for: UIControl.State.normal)
        sumTotal+=0.2
    }
    
    
    @IBAction func moodNeutral(_ sender: Any) {
        let happyImage = UIImage(named: "happyFace") as! UIImage
        let sadImage = UIImage(named: "sadFace") as! UIImage
        let neutralImage = UIImage(named: "neutralFaceFilled") as! UIImage
        happyMood.setImage(happyImage, for: UIControl.State.normal)
        neutralMood.setImage(neutralImage, for: UIControl.State.normal)
        sadMood.setImage(sadImage, for: UIControl.State.normal)
        sumTotal+=0.18
    }
    
    
    @IBAction func moodSad(_ sender: Any) {
        let happyImage = UIImage(named: "happyFace") as! UIImage
        let sadImage = UIImage(named: "sadFaceFilled") as! UIImage
        let neutralImage = UIImage(named: "neutralFace") as! UIImage
        happyMood.setImage(happyImage, for: UIControl.State.normal)
        neutralMood.setImage(neutralImage, for: UIControl.State.normal)
        sadMood.setImage(sadImage, for: UIControl.State.normal)
        sumTotal+=0.15;
    }
    
    
    func calculate(emojiScore: Double) -> Double{
        var average = emojiScore/3;
        print(average)
        if(average - 0.15 < average - 0.18){
            return 0.15
        }
        if(average - 0.2 < average - 0.18){
            return 0.2
        }
        else{
            return 0.18
        }
        
    }
    
    @IBAction func recommendButton(_ sender: Any) {
        self.sumTotal = calculate(emojiScore: sumTotal)
        performSegue(withIdentifier: "moodToCalc", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ViewController
        {
            var firstTotal = Double(firstAmount)
            print(firstTotal)
            var tip = firstTotal * self.sumTotal
            var finalTotal = firstTotal + (firstTotal * self.sumTotal)
            
            //print(finalTotal)
            let vc = segue.destination as? ViewController
            vc?.amountFromMood = String(format: "%.2f", firstTotal ?? 0)
            vc?.updatedAmount = String(format: "$%.2f", finalTotal)
            vc?.tipSegue = String(format: "$%.2f", tip)
        }
    }
   

    
}
