//
//  accountViewContorller.swift
//  OrderApp
//
//  Created by Lucas Dahl on 7/2/20.
//

import UIKit

class AccountViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logOutTapped(_ sender: Any) {
        
        // Logs out the user
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: Constants.Storyboard.loginViewController) as UIViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
    }
    
}
