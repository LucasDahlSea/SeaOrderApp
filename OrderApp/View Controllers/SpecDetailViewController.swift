//
//  SpecDetailViewController.swift
//  OrderApp
//
//  Created by Lucas Dahl on 6/29/20.
//

import UIKit

class SpecDetailViewController: UIViewController {
    
    
    //=================
    // MARK: Properties
    //=================
    
    var spec: Spec?
    var orderedArray: [Spec] = []
    
    // Outlets
    @IBOutlet weak var specNumber: UILabel!
    @IBOutlet weak var specDescription: UILabel!
    @IBOutlet weak var specPalletCount: UILabel!
    @IBOutlet weak var palletsToAddTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Make sure the spec is not nil
        if spec != nil {
            
            showSpec(spec!)
            
        }
        
        // Set the palletText field to numerical pad
        self.palletsToAddTextField.keyboardType = .numberPad
        
    }
    
    //=================
    // MARK: Functions
    //=================
    
    func showSpec(_ s: Spec) {
        
        // Set the labels
        specNumber.text = s.specNumber
        specDescription.text = s.specDescription
        specPalletCount.text = "\(s.palletCount)"
        
    }
    
    
    //=================
    // MARK: IBACtions
    //=================
    
    @IBAction func backTapped(_ sender: Any) {
        
        // Dismiss the controller
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func addPallet(_ sender: Any) {
        
        if spec != nil {
            
            //spec!.palletsOrdered += spec!.palletCount * numOrdered
            spec!.palletsOrdered += Int(palletsToAddTextField.text!)!
            
        }
        
        orderedArray.append(spec!)
 
    }
    
}
