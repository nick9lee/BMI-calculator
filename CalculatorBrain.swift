//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nicholas Lee on 2020-05-23.
//  
//

import UIKit

struct CalculatorBrain{
    
    var BMI: BMIndex?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        
        if bmiValue < 18.5 {
            BMI = BMIndex(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue < 24.9{
            BMI = BMIndex(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else{
            BMI = BMIndex(value: bmiValue, advice: "eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue() -> String{
         return String(format: "%.1f", BMI?.value ?? 0.0)
        
        //  BMI = BMIndex(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
    func getAdvice() -> String{
        return BMI?.advice ?? "no advice"
    }
    
    func getColor() -> UIColor{
        return BMI?.color ?? UIColor.white
    }

}
