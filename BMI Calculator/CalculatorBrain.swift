import Foundation
import UIKit

struct CalculatorBrain {
	
	private var bmi: Float? = nil
	
	mutating func calculateBMI(height: Float, weight: Float) {
		bmi = weight / pow(height, 2)
	}
	
	func getBMIValue() -> String {
		let bmiValueToOneDecimalPlace = String(format: "%.1f", bmi ?? 0.0)
		return bmiValueToOneDecimalPlace
	}
}

