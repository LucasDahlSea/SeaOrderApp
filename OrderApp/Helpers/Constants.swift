//
//  Constants.swift
//  OrderApp
//
//  Created by Lucas Dahl on 6/26/20.
//

import Foundation

// A list of all storyboard constants to help reduce naming errors when being called or referenced.
struct Constants {
    
    struct Storyboard {
        
        // Segues
        static let specSegue = "toSpec"
        static let orderDetailSegue = "toOrderDetail"
        
        // CellId's
        static let specCellId = "SpecCell"
        static let orderCellId = "OrderCell"
        static let orderDetailListCellId = "ListCell"
        static let orderPreviewCell = "orderPreviewCell"
        
        // Storyboards
        static let mainVC = "MainVC"
        static let loginViewController = "LoginViewController"
        static let orderViewController = "OrderViewController"
        static let specDetailController = "SpecDetailViewController"
        static let specViewController = "specViewController"
        static let orderListViewController = "orderListViewController"
        static let orderDetailStatusViewController = "orderDetailStatusViewController"
        static let settingsViewController = "SettingsViewController"
        static let accountViewController = "AccountViewController"
        
    }
    
}
