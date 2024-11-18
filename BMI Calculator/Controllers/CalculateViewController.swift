//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

	private var calculatorBrain = CalculatorBrain()
	
	// MARK: - Outlets
	@IBOutlet private weak var heightLabel: UILabel!
	
	@IBOutlet private weak var weightLabel: UILabel!
	
	@IBOutlet private weak var heightSlider: UISlider!
	
	@IBOutlet private weak var weightSlider: UISlider!
	
	// MARK: - ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

	// MARK: - Actions
	@IBAction private func heightSliderChanged(_ sender: UISlider) {
		let height = String(format: "%.2f", sender.value)
		heightLabel.text = "\(height)m"
	}
	
	@IBAction private func weightSliderChanged(_ sender: UISlider) {
		let weight = String(format: "%.0f", sender.value)
		weightLabel.text = "\(weight)kg"
	}
	
	@IBAction private func calculatePressed(_ sender: UIButton) {
		let height = heightSlider.value
		let weight = weightSlider.value
		calculatorBrain.calculateBMI(height: height, weight: weight)
		self.performSegue(withIdentifier: "goToResult", sender: self)
	}
	
	// MARK: - Navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "goToResult" {
			let destinationVC = segue.destination as! ResultViewController
			destinationVC.bmiValue = calculatorBrain.getBMIValue()
			destinationVC.advice = calculatorBrain.getAdvice()
			destinationVC.color = calculatorBrain.getColor()
		}
	}
	
	// MARK: - private functions
	private func roundValue(_ value: Float) -> String {
		let roundedValue = String(format: "%.2f", value)
		return roundedValue
	}
}

