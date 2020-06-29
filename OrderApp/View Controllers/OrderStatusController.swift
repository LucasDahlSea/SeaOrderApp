//
//  OrderStatusController.swift
//  OrderApp
//
//  Created by Lucas Dahl on 6/26/20.
//

import UIKit

class SpecDetailController: UIViewController {
    
    //=================
    // MARK: Properties
    //=================
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //=================
    // MARK: IBACtions
    //=================
    
    @IBAction func backTapped(_ sender: Any) {
        
        // Dismiss the controller
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
    }
    
}
