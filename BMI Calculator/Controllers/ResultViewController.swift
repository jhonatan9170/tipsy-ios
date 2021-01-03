//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by jhontan on 5/4/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    var ibmResult:String?
    var color:UIColor?
    var advice:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text=ibmResult
        view.backgroundColor = color
        adviceLabel.text=advice
    }

    @IBAction func goToCalcute(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)

    }
    
}
