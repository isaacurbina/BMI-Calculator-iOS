//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Isaac Urbina on 11/17/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
	
	var bmiValue: String?
	var advice: String?
	var color: UIColor?

	@IBOutlet private weak var bmiLabel: UILabel!
	
	@IBOutlet private weak var adviceLabel: UILabel!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		bmiLabel.text = bmiValue
		adviceLabel.text = advice
		view.backgroundColor = color
    }
    
	@IBAction private func recalculatePressed(_ sender: UIButton) {
		self.dismiss(animated: true, completion: nil)
	}
}

