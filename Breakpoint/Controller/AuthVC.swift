//
//  AuthVC.swift
//  Breakpoint
//
//  Created by Matt Tripodi on 9/29/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit
import Firebase

class AuthVC: UIViewController {
	
	// Outlets

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		if Auth.auth().currentUser != nil {
			dismiss(animated: true, completion: nil)
		}
	}
	
	@IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
		let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
		present(loginVC!, animated: true, completion: nil)
	}
	
	@IBAction func googleSignInBtnWasPressed(_ sender: Any) {
	}
	
	@IBAction func facebookSignInBtnWasPressed(_ sender: Any) {
	}
	
}
