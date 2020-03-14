//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Esra Dursun

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float ) {
        let bmiValue = weight / pow(height,2)//(height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "OMG! You're starving,run and eat something", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue >= 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Wow! All eyes on you, you're so fit!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Sorry! you're a big guy :(", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) // color literal is the short of getting colors
        }
        
    }
    
    func getBMIValue() -> String {
        
        //optional tanimli bmi kullanabilmek icin yollardan biri asagida gibi if check digeri tek satirda ?? yazilan kod
//        if let safeBMI = bmi {
//            let bmi1 = String(format: "%.1f", safeBMI)
//            return bmi1
//        } else {
//            return "0.0"
//        }
        let bmi1 = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi1

    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Ne yersen ye"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.yellow
    }
}
