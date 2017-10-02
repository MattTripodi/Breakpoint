//
//  MeVC.swift
//  Breakpoint
//
//  Created by Matt Tripodi on 10/2/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class MeVC: UIViewController {
	
	// Outlets
	@IBOutlet weak var profileImage: UIImageView!
	@IBOutlet weak var emailLbl: UILabel!
	@IBOutlet weak var tableView: UITableView!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	@IBAction func signOutBtnWasPressed(_ sender: Any) {
	}
	
}
