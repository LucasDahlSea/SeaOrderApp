//
//  SpecViewController.swift
//  OrderApp
//
//  Created by Lucas Dahl on 6/26/20.
//

import UIKit

class SpecViewController: UIViewController {
    
    //=================
    // MARK: Properties
    //=================
    
    // Test data
    var specArray: [Spec] = []
    var test = Spec.init(specNum: 123456, specDesc: "box")
    // End test data
    
    // Outlets
    @IBOutlet weak var specTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        specTableView.delegate = self
        specTableView.dataSource = self
        
        
        specArray.append(test)// Test data
        
    }
    
}

extension SpecViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Make the cell
        let cell = specTableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.specCellId, for: indexPath) as! SpecCell
        
        // Get the spec
        let s:Spec
        s = specArray[indexPath.row]
        
        cell.showSpec(s)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Trigger the segue to the spec detail controller
        performSegue(withIdentifier: Constants.Storyboard.specSegue, sender: self)
        
    }
    
    
}
