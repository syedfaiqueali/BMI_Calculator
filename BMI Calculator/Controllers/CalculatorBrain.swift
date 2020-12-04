//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Faiq on 04/12/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    /**Variables
     Initialization in struct is neccessary because if we don't do it the in CalculateViewController class when where we were creating it's instance having to set the value.
     
     But in reality it doesn't makes sense that initializing the value.
     var bmi: Float = 0.0
     
     So it better to convert them into optional type and remove the value*/
    
    var bmi: Float?
    
    //MARK:- Helper Methods
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
    
    func getBMIValue() -> String {
        /*
        if let safeBMI = bmi {
            let bmiTo1DecimalPlace = String(format: "%.1f", safeBMI)
            return bmiTo1DecimalPlace
        } else {
            return "0.0"
        }
 */
        //Nil coalescing 
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
}
