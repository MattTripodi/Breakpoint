//
//  CreateGroupsVC.swift
//  Breakpoint
//
//  Created by Matt Tripodi on 10/3/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class CreateGroupsVC: UIViewController {
	
	// Outlets
	@IBOutlet weak var titleTextField: InsetTextField!
	@IBOutlet weak var descriptionTextField: InsetTextField!
	@IBOutlet weak var emailSearchTextField: InsetTextField!
	@IBOutlet weak var groupMemberLbl: UILabel!
	@IBOutlet weak var doneBtn: UIButton!
	@IBOutlet weak var tableView: UITableView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.delegate = self
		tableView.dataSource = self
	}
	
	@IBAction func doneBtnWasPressed(_ sender: Any) {
	}
	
	@IBAction func closeBtnWasPressed(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
	
}

extension CreateGroupsVC: UITableViewDelegate, UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 3
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "userCell") as? UserCell else { return UITableViewCell() }
		let profileImage = UIImage(named: "defaultProfileImage")
		
		cell.configureCell(profileImage: profileImage!, email: "Marty@bttf.com", isSelected: true)
		return cell
	}
}
