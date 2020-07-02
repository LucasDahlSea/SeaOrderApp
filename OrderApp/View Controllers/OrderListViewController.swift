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
    var orderHistory: [Order] = []
    var liveOrders: [Order] = []
    var test = Order.init(orderTime: "6/30/20", orderNumber: 256868, eta: "7/1/20")
    var test2 = Order.init(orderTime: "6/29/20", orderNumber: 15468, eta: "6/29/20")
    var testSpec = Spec.init(specNum: 3096, specDesc: "50# top", pltCount: 260)
    var testSpec2 = Spec.init(specNum: 3097, specDesc: "50# btm", pltCount: 260)
    
    
    // Outlets
    @IBOutlet weak var orderHistoryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the tableCiew
        orderHistoryTableView.delegate = self
        orderHistoryTableView.dataSource = self
        
        // MARK: Test data
        liveOrders.append(test)
        orderHistory.append(test2)
        testSpec.palletsOrdered = 2
        testSpec2.palletsOrdered = 2
        test.bolNum = 56568
        test.specsOrdered.append(testSpec)
        test.specsOrdered.append(testSpec2)
        
        
    }
    
    // Used to pass the spec to the detail VC.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Check for nil values to avoid a crash - Will need when using a database
//        guard specArray != nil && specTableView.indexPathForSelectedRow != nil else {
//            return
//        }
        
        let orderDetailVC = segue.destination as? OrderDetailViewController
        
        if let specDetailVC = orderDetailVC {
            
            // Set the place for the detail view contorller
            specDetailVC.order = liveOrders[orderHistoryTableView.indexPathForSelectedRow!.row]
            
        }
    }
    
}

extension OrderListViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if orderHistoryTableView.numberOfSections > 1 && section == 0 {
            
            // There are 2 sections, and it's asking about the 1st section
            return liveOrders.count > 0 ? liveOrders.count : 0
            
        } else {
            
            // There is only 1 section
            return orderHistory.count > 0 ? orderHistory.count : 0
            
        }
            }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = orderHistoryTableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.orderCellId, for: indexPath) as! OrderCell
        
        let o: Order
        o = liveOrders[indexPath.row]
        
        cell.showOrder(o)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let view = UIView()

        // Create a label
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false

        // Create constraints for the label in the view
        let leftLabelConstraint = NSLayoutConstraint(item: label, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 10)
        let topLabelConstraint = NSLayoutConstraint(item: label, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 10)

        // Add the label into the view
        view.addSubview(label)

        // Add the constraints to the view
        view.addConstraints([leftLabelConstraint, topLabelConstraint])

        // Set the label text
        if tableView.numberOfSections > 1 && section == 0 {
            label.text = "Current Order"
        } else {
            label.text = "Order History"
        }

        // Return the view
        return view


    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 69.5
    }
    
    
}
