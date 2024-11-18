import Foundation
import UIKit

struct CalculatorBrain {
	
	private var bmi: BMI? = nil
	
	mutating func calculateBMI(height: Float, weight: Float) {
		let bmiValue = weight / pow(height, 2)
		getBMI(bmiValue)
	}
	
	func getBMIValue() -> String {
		let bmiValueToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
		return bmiValueToOneDecimalPlace
	}
	
	func getAdvice() -> String {
		return bmi?.advice ?? "N/A"
	}
	
	func getColor() -> UIColor {
		return bmi?.color ?? .black
	}
	
	private mutating func getBMI(_ bmiValue: Float) {
		if bmiValue < 18.5 {
			bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
		} else if bmiValue < 24.9 {
			bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
		} else {
			bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
		}
	}
}
