//
//  ShadowView.swift
//  Breakpoint
//
//  Created by Matt Tripodi on 9/29/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

@IBDesignable
class ShadowView: UIView {
	
	override func awakeFromNib() {
		self.layer.shadowOpacity = 0.75
		self.layer.shadowRadius = 5
		self.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
		super.awakeFromNib()
	}

}
