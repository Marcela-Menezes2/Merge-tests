//
//  SeachScreen.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 31/03/22.
//

import UIKit

class SearchScreen: UIView {
    
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
     self.addSubview(self.search)
     self.setUpConstraints()
 }
 
 required init?(coder: NSCoder) {
     fatalError("init(coder:) has not been implemented")
 }

 func setUpConstraints(){
    NSLayoutConstraint.activate([
  
  
    
     self.search.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
     self.search.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6),
     self.search.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -6),
     
     ])
    
}
}
