//
//  ShopScreen.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 31/03/22.
//

import UIKit

class ShopScreen: UIView {
    
    lazy var lojaLabel: UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.textColor = .black

        label.font = UIFont.boldSystemFont(ofSize: 22.0)
         label.text = "Loja"
         return label
     }()
    
    lazy var bookImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "bookmark.square")
        imagem.tintColor = .black
        return imagem
    }()
    
    lazy var shoppImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "text.justify")
        imagem.tintColor = .black
        return imagem
    }()
    
    lazy var search: UISearchBar = {
         let search = UISearchBar()
         search.translatesAutoresizingMaskIntoConstraints = false
         search.searchBarStyle = .default
         search.placeholder = "Pesquisar"
         search.searchTextField.textColor = .black
         search.sizeToFit()
         search.isTranslucent = false
         return search
     }()
    
    override init(frame: CGRect) {
     super.init(frame: frame)
     self.addSubview(self.lojaLabel)
     self.addSubview(self.bookImage)
     self.addSubview(self.shoppImage)
     self.addSubview(self.search)
     self.setUpConstraints()
 }
 
 required init?(coder: NSCoder) {
     fatalError("init(coder:) has not been implemented")
 }

 func setUpConstraints(){
    NSLayoutConstraint.activate([
  
    self.lojaLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
    self.lojaLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
    
    self.bookImage.topAnchor.constraint(equalTo: self.lojaLabel.topAnchor, constant: 7),
    self.bookImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
    
    self.shoppImage.topAnchor.constraint(equalTo: self.lojaLabel.topAnchor, constant: 7),
    self.shoppImage.leadingAnchor.constraint(equalTo: self.bookImage.leadingAnchor, constant: 38),
    
    
     self.search.topAnchor.constraint(equalTo: self.lojaLabel.bottomAnchor, constant: 8),
     self.search.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6),
     self.search.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -6),
     
     ])
    
}
}

