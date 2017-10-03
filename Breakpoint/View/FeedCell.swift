//
//  FeedCell.swift
//  Breakpoint
//
//  Created by Matt Tripodi on 10/3/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

	// Outlets 
	@IBOutlet weak var profileImage: UIImageView!
	@IBOutlet weak var emailLbl: UILabel!
	@IBOutlet weak var contentLbl: UILabel!
	
	func configureCell(profileImage: UIImage, email: String, content: String) {
		self.profileImage.image = profileImage
		self.emailLbl.text = email
		self.contentLbl.text = content
	}
	
}
