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

        // Do any additional setup after loading the view.
    }
	
	@IBAction func doneBtnWasPressed(_ sender: Any) {
	}
	
	@IBAction func closeBtnWasPressed(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
	
}
