//
//  OrderDetailViewController.swift
//  OrderApp
//
//  Created by Lucas Dahl on 6/26/20.
//

import UIKit

class OrderDetailViewController: UIViewController {
    
    // Properties
    var order: Order?
    
    @IBOutlet weak var orderNumberLabel: UILabel!
    @IBOutlet weak var orderStatusLabel: UILabel!
    @IBOutlet weak var etaLabel: UILabel!
    @IBOutlet weak var bolNumberLabel: UILabel!
    @IBOutlet weak var orderDetailListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orderDetailListTableView.delegate = self
        orderDetailListTableView.dataSource = self
        
        setLabels()
        
    }
    
    
    func setLabels() {
        
        orderNumberLabel.text = "\(order!.orderNum)"
        orderStatusLabel.text = "Shipped"
        etaLabel.text = "7/4/20"
        bolNumberLabel.text = "\(String(describing: order?.bolNum))"
        
    }
    
    //=================
    // MARK: IBACtions
    //=================
    
    @IBAction func dismissedTapped(_ sender: Any) {
        
        // Dismiss the viewController
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
    }
    
}

extension OrderDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (order?.specsOrdered.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create the cell
        let cell = orderDetailListTableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.orderDetailListCellId) as! listCell
        
        // Make the cell not highlight
        cell.selectionStyle = .none
        
        let s: Spec
        s = (order?.specsOrdered[indexPath.row])!
        
        cell.showOrder(s)
        
        
        return cell

    }
    
    
}

extension Optional: CustomStringConvertible {

    public var description: String {
        switch self {
        case .some(let wrappedValue):
            return "\(wrappedValue)"
        default:
            return "<nil>"
        }
    }
}
