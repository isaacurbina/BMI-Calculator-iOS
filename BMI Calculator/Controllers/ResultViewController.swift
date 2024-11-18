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

	@IBOutlet private weak var bmiLabel: UILabel!
	
	@IBOutlet private weak var adviseLabel: UILabel!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		bmiLabel.text = bmiValue
    }
    
	@IBAction private func recalculatePressed(_ sender: UIButton) {
		self.dismiss(animated: true, completion: nil)
	}
}

