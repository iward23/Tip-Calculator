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

UI    }
    
}

