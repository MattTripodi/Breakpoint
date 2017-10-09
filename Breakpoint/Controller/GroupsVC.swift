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
	
	// Variables
	var groupsArray = [Group]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.delegate = self
		tableView.dataSource = self
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		DataService.instance.REF_GROUPS.observe(.value) { (snapshot) in
			DataService.instance.getAllGroups { (returnGroupsArray) in
				self.groupsArray = returnGroupsArray
				self.tableView.reloadData()
			}
		}
	}
	
}

extension GroupsVC: UITableViewDelegate, UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return groupsArray.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as? GroupCell else { return UITableViewCell() }
		let group = groupsArray[indexPath.row]
		cell.configureCell(title: group.groupTitle, description: group.groupDescription, memberCount: group.memeberCount)
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		guard let groupFeedVC = storyboard?.instantiateViewController(withIdentifier: "GroupFeedVC") as? GroupFeedVC else { return }
		groupFeedVC.initData(forGroup: groupsArray[indexPath.row])
		present(groupFeedVC, animated: true, completion: nil)
	}
	
}













