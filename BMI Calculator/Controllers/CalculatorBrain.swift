//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by jhontan on 5/4/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    
    var ibm:BMI?
    
    mutating func calculateIbm(height: Float,weight:Float){
        let ibmValue = weight/pow(height, 2)
        if ibmValue<18.5{
            ibm = BMI(value: ibmValue, advice: "Eat more snacks", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }else if ibmValue<24.9 {
            ibm = BMI(value: ibmValue, advice: "Perfect", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else{
            ibm = BMI(value: ibmValue, advice: "Eat less snack", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
    }
    func getIbm ()->String{
        let ibmString = String(format: "%0.1f", ibm?.value ?? 0.0)
        return ibmString
    }
    func getColor()->UIColor{
        return ibm?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    func getAdvice() -> String {
        return ibm?.advice ?? "no hay mensaje"
    }
}
