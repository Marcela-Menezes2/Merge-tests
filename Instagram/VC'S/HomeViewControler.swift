//
//  HomeViewControler.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 30/03/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeScreen = HomeScreen()
    var tableView = PostHomeTableViewCell()
  //  var tableView:  UITableView?
    
    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = self.homeScreen
//        self.tableView = UITableView()
//        self.view = self.tableView
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        let storiesVC = StoriesViewController()
        self.addChild(storiesVC)
        self.view.addSubview(storiesVC.view)
        self.didMove(toParent: self)

     
    }
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        
       tableView.frame = view.bounds
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {

            self.navigationController?.setNavigationBarHidden(true, animated: false)

       
        }
}



