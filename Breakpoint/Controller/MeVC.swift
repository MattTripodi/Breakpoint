//
//  MeVC.swift
//  Breakpoint
//
//  Created by Matt Tripodi on 10/2/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit
import Firebase

class MeVC: UIViewController {
	
	// Outlets
	@IBOutlet weak var profileImage: UIImageView!
	@IBOutlet weak var emailLbl: UILabel!
	@IBOutlet weak var tableView: UITableView!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		self.emailLbl.text = Auth.auth().currentUser?.email
	}
	
	@IBAction func signOutBtnWasPressed(_ sender: Any) {
		let logoutPopup = UIAlertController(title: "Logout?", message: "Are you sure you want to logout?", preferredStyle: .actionSheet)
		let stayLoggedInAction = UIAlertAction(title: "No keep me logged in", style: UIAlertActionStyle.default, handler: nil)
		let logoutAction = UIAlertAction(title: "Logout", style: .destructive) { (butonTapped) in
			do {
				try Auth.auth().signOut()
				let authVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthVC") as? AuthVC
				self.present(authVC!, animated: true, completion: nil)
			} catch {
				print(error)
			}
		}
		logoutPopup.addAction(stayLoggedInAction)
		logoutPopup.addAction(logoutAction)
		present(logoutPopup, animated: true, completion: nil)
	}
	
}
