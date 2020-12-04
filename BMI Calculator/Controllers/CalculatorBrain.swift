//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Faiq on 04/12/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    //Variables
    var bmi: Float = 0.0
    
    
    //MARK:- Helper Methods
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
        
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
    
}
