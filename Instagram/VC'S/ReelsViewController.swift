//
//  ReelsViewController.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 31/03/22.
//

import UIKit

class ReelsViewController: UIViewController {

var reelsScreen: ReelsScreen?

override func loadView() {
    self.reelsScreen = ReelsScreen()
    self.view = self.reelsScreen
    
    
}

override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .white
    
}

    override func viewWillAppear(_ animated: Bool) {

        self.navigationController?.setNavigationBarHidden(true, animated: false)

    }
}
