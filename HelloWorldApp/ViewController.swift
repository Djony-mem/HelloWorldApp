//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by brubru on 21.09.2023.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var greetingLabel: UILabel!
	@IBOutlet weak var greetingButton: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		greetingLabel.isHidden = true
		greetingButton.configuration = setupButton(with: "Show Greeting")
	}
	
	@IBAction func greetingButtonPressed() {
		greetingLabel.isHidden.toggle()
		
		greetingButton.configuration = setupButton(
			with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
		)
	}
	
	private func setupButton(with title: String) -> UIButton.Configuration {
		var buttonConfiguration = UIButton.Configuration.filled()
		buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.9999999404, green: 0.3084183931, blue: 0.2541919351, alpha: 1)
		buttonConfiguration.title = title
		buttonConfiguration.buttonSize = .large
		buttonConfiguration.cornerStyle = .large
		buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
		return buttonConfiguration
	}
}

