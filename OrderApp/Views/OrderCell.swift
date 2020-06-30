//
//  OrderCell.swift
//  OrderApp
//
//  Created by Lucas Dahl on 6/26/20.
//

import UIKit

class OrderCell: UITableViewCell {
    
    //===================
    // MARK: - Properties
    //===================
    var order: Order?
    
    // Outlets
    @IBOutlet weak var orderNumLabel: UILabel!
    @IBOutlet weak var dateOrderedLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func showOrder(_ o: Order) {
        
        // Get the order
        order = o
        
        //orderNumLabel.text = o.orderNum
        
        
    }
    
}
