//
//  Order.swift
//  OrderApp
//
//  Created by Lucas Dahl on 6/30/20.
//

import Foundation

class Order {
    
    //===================
    // MARK: - Properties
    //===================
    var specsOrdered: [Spec] = []
    var orderTime: String
    var orderNum: Int
    var orderRecieved = false
    var shiped = false
    var orderETA: String?
    var bolNum: Int?
    var dateNeeded: String?
    
    init(orderTime: String, orderNumber: Int, eta: String) {
        
        self.orderNum = orderNumber
        self.orderTime = orderTime
        
    }
    
    
}
