//
//  HomePageViewController.swift
//  GropProject
//
//  Created by Shotiko Klibadze on 05.07.21.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet var homePageTableView: UITableView!
    
    
    private var dataSource : HomePageDataSource!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homePageTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")

        
    }
    
    
    func configureViewModel() {
       dataSource = HomePageDataSource(with: homePageTableView)
        
    }
    
    
    

   

}
