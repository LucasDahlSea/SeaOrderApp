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
    var specArray: [Spec] = []
    var test = Spec.init(specNum: 123456, specDesc: "box")
    
    // Outlets
    @IBOutlet weak var specTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        specTableView.delegate = self
        specTableView.dataSource = self
        
        specArray.append(test)
        
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
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    
}
