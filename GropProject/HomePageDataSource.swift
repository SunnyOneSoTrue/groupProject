//
//  HomePageDataSource.swift
//  GropProject
//
//  Created by Shotiko Klibadze on 05.07.21.
//

import Foundation
import UIKit

class HomePageDataSource : NSObject, UITableViewDataSource {
    
    
    private var tableView : UITableView!
    private var viewModel : HomePageViewModelProtocol!
    
    var content = [String]()
    
    init (with tableview: UITableView, viewModel:HomePageViewModelProtocol ) {
        self.tableView  =  tableview
    }
    
    
    
    func refresh() {
        tableView.reloadData()
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return content.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        return cell
        
    }
    
    
}
