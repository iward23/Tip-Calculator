//
//  ViewController.swift
//  Tip Calculator
//
//  Created by 9i on 3/7/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var grandTotal: UILabel!
    @IBOutlet weak var tipOptions: UISegmentedControl!
    @IBOutlet weak var subTotal: UITextField!
    @IBOutlet weak var tipSliderValue: UILabel!
    @IBOutlet weak var billTotal: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billTotal.layer.borderWidth = 3
        billTotal.layer.cornerRadius = 30
    }
    
    @IBAction func tipSlider_Change(_ sender: UISlider) {
        tipSliderValue.text = String(Int(tipSlider.value)) + "%"
    }
    
    
    @IBAction func controlChange(_ sender: UISegmentedControl) {
        if(tipOptions.selectedSegmentIndex == 3)
        {
            tipSlider.isHidden = false
            tipSliderValue.isHidden = false
        }
        else {
            tipSlider.isHidden = true
            tipSliderValue.isHidden = true
        }
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        
    }
    
    
    
    
    
    @IBAction func calculate(_ sender: UIButton) {
        let sub = Double(subTotal.text!)
        var tip = 0.0
        if(tipOptions.selectedSegmentIndex == 0)
        {
            tip = 0.15
        }
        
        if(tipOptions.selectedSegmentIndex == 1)
        {
            tip = 0.18
        }
        
        if(tipOptions.selectedSegmentIndex == 2)
        {
            tip = 0.20
        }
        
        if(tipOptions.selectedSegmentIndex == 3)
        {
            tip = Double(tipSlider.value / 100)
        }
        let tipA = ((tip * (sub ?? 0) * 100 )) / 100
        let total = round(((tip * (sub ?? 0 ) * tip) + (sub ?? 0)* 100) / 100
        grandTotal.text = "$" + String(total)
        tipAmount.text = "$" + String(tipA)
    }
    
    
    
    
    
    
    
    
}

