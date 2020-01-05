//
//  ViewController.swift
//  TipCalc
//
//  Created by Omar Zintan Mwinila-Yuori on 04/01/2020.
//  Copyright © 2020 Omar Zintan Mwinila-Yuori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0 //get the bill amount
        let tipPercentages=[0.15,0.18, 0.2]
        let tip=bill*tipPercentages[tipControl.selectedSegmentIndex] //calculate the tip
        let total=bill+tip //calculate the total
        //update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

