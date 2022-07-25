//
//  UsuarioViewController.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 31/03/22.
//


import UIKit

class UsuarioViewController: UIViewController {

var usuarioScreen: UsuarioScreen?

override func loadView() {
    self.usuarioScreen = UsuarioScreen()
    self.view = self.usuarioScreen
    
    
}

override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .white
    
}

    override func viewWillAppear(_ animated: Bool) {

        self.navigationController?.setNavigationBarHidden(true, animated: false)

    }
}

