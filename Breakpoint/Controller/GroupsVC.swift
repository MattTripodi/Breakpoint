//
//  SecondViewController.swift
//  Breakpoint
//
//  Created by Matt Tripodi on 9/28/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class GroupsVC: UIViewController {
	
	// Outlets 
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.delegate = self
		tableView.dataSource = self
	}
	
}

extension GroupsVC: UITableViewDelegate, UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 3
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as? GroupCell else { return UITableViewCell() }
		cell.configureCell(title: "Nerd Herd", description: "The nerdiest nerds around", memberCount: 3)
		return cell
	}
}

