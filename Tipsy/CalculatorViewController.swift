//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    
    var tipPct:Float=0.0
    var splitNumber=2
    var result:Float=0.0
    override func viewDidLoad() {
       super.viewDidLoad()
       /// billTextField.delegate = self as? UITextFieldDelegate
        normalButtonUi()
    }


    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
       normalButtonUi()
        sender.isSelected = true
        switch sender.currentTitle {
        case "0%":
            tipPct=0.0
        case "10%" :
            tipPct=0.1
        default:
            tipPct=0.2
        }
    
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
      
        splitNumber=Int(sender.value)
        splitNumberLabel.text = "\(splitNumber)"
        
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let textField = billTextField.text!
        if textField != ""{
        let totalBill = Float(textField)!
        result = (1+(tipPct))*totalBill/Float(splitNumber)}
        view.endEditing(true)
      
    }
    func normalButtonUi(){
        zeroPctButton.isSelected=false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected=false
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToResult"{
            let secondVC = segue.destination as! ResultViewController
            secondVC.total = result
        }
    
    }
    
}

