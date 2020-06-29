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
    
        // Allows for the keyboard to hide when the user taps anywhere on the screen
        self.setupToHideKeyboardOnTapOnView()
        
    }
    
    
    //==================
    // MARK: - Functions
    //==================
    
    
    // These two functions will push the view up when typing on smaller devices
    func keyboardWillShow(sender: NSNotification) {
        self.view.frame.origin.y -= 150
    }
    func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y += 150
    }
    
   // TODO: Add the abbility to hide the keyboard when the user hits return
    
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
            
            // Create an alert
            let alert = UIAlertController(title: "Error", message: "Incorrect password or username.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (action) in
                
                switch action.style {
                
                case .default:
                    print("Default")
                case .cancel:
                    print("Cancel")
                case .destructive:
                    print("destructive")
                @unknown default:
                    print("Unkown error")
                }
                
            }))
            
            // Present the alert
            self.present(alert, animated: true, completion: nil)
            
            
        }
    
    }
}



// Allows for the keyboard to be dismissed when the user taps anywhere else.
extension UIViewController {
    
    func setupToHideKeyboardOnTapOnView() {
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            
            target: self,
            action: #selector(UIViewController.dismissKeyboard))

        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
