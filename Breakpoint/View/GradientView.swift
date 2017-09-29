//
//  GradientView.swift
//  Breakpoint
//
//  Created by Matt Tripodi on 9/28/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

	@IBInspectable var topColor: UIColor = #colorLiteral(red: 0.1411764706, green: 0.1490196078, blue: 0.1843137255, alpha: 1) {
		didSet {
			self.setNeedsLayout()
		}
	}
	
	@IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.3185769836, green: 0.3394805575, blue: 0.4131326609, alpha: 1) {
		didSet {
			self.setNeedsLayout()
		}
	}
	
	override func layoutSubviews() {
		let gradientLayer = CAGradientLayer()
		gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
		gradientLayer.startPoint = CGPoint(x: 0, y: 0)
		gradientLayer.endPoint = CGPoint(x: 1, y: 1)
		gradientLayer.frame = self.bounds
		self.layer.insertSublayer(gradientLayer, at: 0)
	}
}
