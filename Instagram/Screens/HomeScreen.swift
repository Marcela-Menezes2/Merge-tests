//
//  HomeScreen.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 30/03/22.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var logoImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(named: "logo")
        return imagem
    }()
    
    lazy var setImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "chevron.down")
        imagem.tintColor = .black
        return imagem
    }()
    
    lazy var add2Image: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "plus.square")
        imagem.tintColor = .black
        return imagem
    }()
    
    lazy var heartImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "suit.heart")
        imagem.tintColor = .black
        return imagem
    }()
    
    lazy var msgImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "message")
        imagem.tintColor = .black
        
        return imagem
    }()
    
    lazy var tableView: UIView = {
        let table = StatusTableView()
        table.backgroundColor = .blue
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()

    
    lazy var stories: UIView = {
        let storiesVC = StoriesViewController()
        if let view = storiesVC.view {
           view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .green
            return view
        } else {
            return UIView()
        }
        
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.logoImage)
        self.addSubview(self.setImage)
        self.addSubview(self.add2Image)
        self.addSubview(self.heartImage)
        self.addSubview(self.msgImage)
        self.addSubview(tableView)
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            self.logoImage.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.logoImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                   
            self.setImage.topAnchor.constraint(equalTo: self.logoImage.topAnchor, constant: 10),
            self.setImage.leadingAnchor.constraint(equalTo: self.logoImage.trailingAnchor, constant: 10),
            
            self.add2Image.topAnchor.constraint(equalTo: self.logoImage.topAnchor, constant: 7),
            self.add2Image.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -90),
            
            self.heartImage.topAnchor.constraint(equalTo: self.logoImage.topAnchor, constant: 7),
            self.heartImage.leadingAnchor.constraint(equalTo: self.add2Image.leadingAnchor, constant: 38),
            
            self.msgImage.topAnchor.constraint(equalTo: self.logoImage.topAnchor, constant: 7),
            self.msgImage.leadingAnchor.constraint(equalTo: self.heartImage.leadingAnchor, constant: 38),
            
            tableView.topAnchor.constraint(equalTo: self.logoImage.bottomAnchor, constant: 90),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)

        ])
    }
    
}

//class FotoListVC: UIViewController {
//    
//    var tableView = UITableView()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configureTableView()
//    }
//
//func configureTableView() {
//    view.addSubview(tableView)
//    setTableViewDelegate()
//    tableView.rowHeight = 100
//    tableView.pin(to: view)
//    
//}
//
//func setTableViewDelegate() {
//    tableView.delegate = self
//    tableView.dataSource = self
//  }
//
//}
//
//extension FotoListVC: UITableViewDelegate, UITableViewDataSource {
//func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    return 30
//}
//
//
//func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    return UITableViewCell()
//    }
//
//}
//
//
