//
//  LoginViewController.swift
//  OrderApp
//
//  Created by Lucas Dahl on 6/26/20.
//

import UIKit

class LoginViewController: UIViewController {
    
    //=================
    // MARK: Properties
    //=================
    
    // Outlets
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //================
    // MARK: IBActions
    //================
    
    @IBAction func loginTapped(_ sender: Any) {
        
        // If the pasword is correct
        if userNameField.text == "user" && passwordField.text == "password" {
            
            // Present the mainVC
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: Constants.Storyboard.mainVC) as UIViewController
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
            
        } else {
            
            // TODO: handle error
            print("Incorrect")
            
        }
    
    }
}
