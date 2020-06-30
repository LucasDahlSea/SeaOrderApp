//
//  OrderDetailViewController.swift
//  OrderApp
//
//  Created by Lucas Dahl on 6/26/20.
//

import UIKit

class OrderDetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //=================
    // MARK: IBACtions
    //=================
    
    @IBAction func dismissedTapped(_ sender: Any) {
        
        // Dismiss the viewController
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
    }
    
}
