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
    var specsOrder: [Spec] = []
    var orderTime: String
    var orderNum: Int
    var orderRecieved = false
    var shiped = false
    var orderETA: String?
    var bolNum: Int?
    
    init(orderTime: String, orderNumber: Int, eta: String) {
        
        self.orderNum = orderNumber
        self.orderTime = orderTime
        
    }
    
    
}
