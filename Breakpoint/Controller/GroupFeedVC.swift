//
//  GroupFeedVC.swift
//  Breakpoint
//
//  Created by Matt Tripodi on 10/9/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {
	
	// Outlets
	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var groupTitleLbl: UILabel!
	@IBOutlet weak var membersLbl: UILabel!
	@IBOutlet weak var sendBtnView: UIView!
	@IBOutlet weak var messageTextField: InsetTextField!
	@IBOutlet weak var sendBtn: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		sendBtnView.bindToKeyboard()
	}
	
	@IBAction func sendBtnWasPressed(_ sender: Any) {
		
	}
	
	@IBAction func backBtnPressed(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
	
	
}
