//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlader: UISlider!
    @IBOutlet weak var weightSlader: UISlider!
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSladerChanged(_ sender: UISlider) {
        let height = String(format: "%.2f",sender.value)
        heightLabel.text = "\(height)m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightLabel.text="\(weight)kg"
    }
    
    @IBAction func calcuateBmi(_ sender: UIButton) {
        let height = heightSlader.value
        let weight = weightSlader.value
        calculatorBrain.calculateIbm(height: height, weight: weight)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToResult"{
            let secondVC = segue.destination as! ResultViewController
            secondVC.ibmResult = calculatorBrain.getIbm()
            secondVC.advice = calculatorBrain.getAdvice()
            secondVC.color = calculatorBrain.getColor()
        }
        
    }
    
    
}

