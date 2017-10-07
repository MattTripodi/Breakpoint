//
//  GroupCell.swift
//  Breakpoint
//
//  Created by Matt Tripodi on 10/7/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {
	
	// Outlets
	@IBOutlet weak var groupTitleLbl: UILabel!
	@IBOutlet weak var groupDescriptionLbl: UILabel!
	@IBOutlet weak var membersLbl: UILabel!
	
	func configureCell(title: String, description: String, memberCount: Int) {
		self.groupTitleLbl.text = title
		self.groupDescriptionLbl.text = description
		self.membersLbl.text = "\(memberCount) members."
	}

}
