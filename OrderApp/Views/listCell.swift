//
//  listCell.swift
//  OrderApp
//
//  Created by Lucas Dahl on 7/1/20.
//

import UIKit

class listCell: UITableViewCell {
    
    //===================
    // MARK: - Properties
    //===================
    var order: Order?
    
    // Outlets
    @IBOutlet weak var specNumLabel: UILabel!
    @IBOutlet weak var qtyLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func showOrder(_ s: Spec) {
        
        specNumLabel.text = "\(s.specNumber)"
        qtyLabel.text = "\(s.palletsOrdered * s.palletCount)"
        
    }
    
}
