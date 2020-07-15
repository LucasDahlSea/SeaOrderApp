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
    
    // Outlets
    @IBOutlet weak var specTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        specTableView.delegate = self
        specTableView.dataSource = self

        
    }
    
    //=================
    // MARK: Functions
    //=================
    
    // Used to pass the spec to the detail VC.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Check for nil values to avoid a crash - Will need when using a database
//        guard specArray != nil && specTableView.indexPathForSelectedRow != nil else {
//            return
//        }
        
        let specDetailVC = segue.destination as? SpecDetailViewController
        
        if let specDetailVC = specDetailVC {
            
            // Set the place for the detail view contorller
            specDetailVC.spec = specArray[specTableView.indexPathForSelectedRow!.row]
            
        }
    }
    
}



extension SpecViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return specArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Make the cell
        let cell = specTableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.specCellId, for: indexPath) as! SpecCell
        
        // Get the spec
        let s: Spec
        s = specArray[indexPath.row]
        
        cell.showSpec(s)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         // Trigger the segue to the spec detail controller
        performSegue(withIdentifier: Constants.Storyboard.specSegue, sender: self)
        
        
        
    }
    
    
}
