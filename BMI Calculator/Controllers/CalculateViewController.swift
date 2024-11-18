//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

	// MARK: - Outlets
	@IBOutlet private weak var heightLabel: UILabel!
	
	@IBOutlet private weak var weightLabel: UILabel!
	
	@IBOutlet private weak var heightSlider: UISlider!
	
	@IBOutlet private weak var weightSlider: UISlider!
	
	private var bmiValue = "0.0"
	
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
		let bmi = weight / pow(height, 2)
		bmiValue = String(format: "%.1f", bmi)
		self.performSegue(withIdentifier: "goToResult", sender: self)
	}
	
	// MARK: - Navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "goToResult" {
			let destinationVC = segue.destination as! ResultViewController
			destinationVC.bmiValue = bmiValue
		}
	}
	
	// MARK: - private functions
	private func roundValue(_ value: Float) -> String {
		let roundedValue = String(format: "%.2f", value)
		return roundedValue
	}
}

