//
//  OrderListController.swift
//  OrderApp
//
//  Created by Lucas Dahl on 6/26/20.
//

import UIKit

class OrderListViewController: UIViewController {
    
    //=================
    // MARK: Properties
    //=================
    
    // Outlets
    @IBOutlet weak var orderHistoryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orderHistoryTableView.delegate = self
        orderHistoryTableView.dataSource = self
        
    }
    
}

extension OrderListViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = orderHistoryTableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.orderCellId, for: indexPath) as! OrderCell
        
        
        return cell
    }
    
    
}
