//
//  SearchViewController.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 31/03/22.
//

import UIKit

class SearchViewController: UIViewController {

var searchScreen: SearchScreen?

override func loadView() {
    self.searchScreen = SearchScreen()
    self.view = self.searchScreen
    
    
}

override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .white
}

    override func viewWillAppear(_ animated: Bool) {

        self.navigationController?.setNavigationBarHidden(true, animated: false)

    }
}
