
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height / 100, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight: Consider increasing your calorie intake with nutritious foods to reach a healthy weight.", color: UIColor(hex: "#3498db"))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal Weight: Congratulations! Your weight is within the healthy range. Maintain a balanced diet and regular exercise.", color: UIColor(hex: "#27ae60"))
        } else {
            bmi = BMI(value: bmiValue, advice: "Overweight: Focus on a balanced diet, portion control, and regular exercise to achieve a healthy weight.", color: UIColor(hex: "#c0392b"))
        }

        
    }
}

