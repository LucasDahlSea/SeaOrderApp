//
//  SpecCell.swift
//  OrderApp
//
//  Created by Lucas Dahl on 6/26/20.
//

import UIKit

class SpecCell: UITableViewCell {
    
    // Properties
    var spec: Spec?
    
    // Outlets
    @IBOutlet weak var specNumLabel: UILabel!
    @IBOutlet weak var specDescLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func showSpec(_ s:Spec) {
        
        // Set the passed in spec
        spec = s
        
        // Update the labels for each spec
        specNumLabel.text = s.specNumber
        specDescLabel.text = s.specDescription
        
    }
    
    
}
