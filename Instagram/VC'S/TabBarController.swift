//
//  ViewController.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 29/03/22.
//

import UIKit


class TabBarController: UITabBarController {
    
    private var TabBarController: TabBarController?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.setupTabBarController()


    }
    
    private func setupTabBarController() {
        
        let home = UINavigationController(rootViewController: HomeViewController())
        let search = UINavigationController(rootViewController: SearchViewController())
        let reels = UINavigationController(rootViewController: ReelsViewController())
        let shop = UINavigationController(rootViewController: ShopViewController())
        let usuario = UINavigationController(rootViewController: UsuarioViewController())
        self.setViewControllers([home, search, reels, shop, usuario], animated: false)
        self.tabBar.backgroundColor = .white
        self.tabBar.isTranslucent = false
        UITabBar.appearance().tintColor = .black
        guard let itens = tabBar.items else{return}
        
       
        
        itens[0].title = ""
        itens[0].image = UIImage(systemName: "house")
      
        
        itens[1].title = ""
        itens[1].image = UIImage(systemName: "magnifyingglass")

        itens[2].title = ""
        itens[2].image = UIImage(systemName: "play.tv")

        itens[3].title = ""
        itens[3].image = UIImage(systemName: "bag")

        itens[4].title = ""
        itens[4].image = UIImage(systemName: "person.circle")
        
        let images = ["house",  "magnifyingglass", "play.tv", "bag", "person.circle" ]
        
        for x in 0...4 {
        itens[x].image = UIImage(systemName: images[x])?.withTintColor(.black, renderingMode: .alwaysOriginal)
    }
        
    }
}


 
