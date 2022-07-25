//
//  ShopViewController.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 31/03/22.
//

import UIKit

class ShopViewController: UIViewController {

var shopScreen: ShopScreen?

override func loadView() {
    self.shopScreen = ShopScreen()
    self.view = self.shopScreen
    
    
}

override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .white
    
}

    override func viewWillAppear(_ animated: Bool) {

        self.navigationController?.setNavigationBarHidden(true, animated: false)

    }
}

