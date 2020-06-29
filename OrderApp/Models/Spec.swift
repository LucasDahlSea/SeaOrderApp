//
//  Spec.swift
//  OrderApp
//
//  Created by Lucas Dahl on 6/26/20.
//

import Foundation

class Spec {
    
    // Properties
    var specNumber: String
    var specDescription: String
    var palletCount: Int

    init(specNum: Int, specDesc: String, pltCount: Int) {
        
        specNumber = "\(specNum)"
        specDescription = specDesc
        palletCount = pltCount
        
    }

    
}
