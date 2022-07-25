//
//  ReelsScreen.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 31/03/22.
//

import UIKit

class ReelsScreen: UIView {
    
    lazy var foto: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:  "profile8")
        return imageView
    }()
    
    override init(frame: CGRect) {
     super.init(frame: frame)
     self.addSubview(self.foto)
     self.setUpConstraints()
 }
 
 required init?(coder: NSCoder) {
     fatalError("init(coder:) has not been implemented")
 }

 func setUpConstraints(){
    NSLayoutConstraint.activate([
        
    self.foto.bottomAnchor.constraint(equalTo: self.bottomAnchor),
    self.foto.leadingAnchor.constraint(equalTo: self.leadingAnchor),
    self.foto.trailingAnchor.constraint(equalTo: self.trailingAnchor),
    self.foto.widthAnchor.constraint(equalToConstant: 80)
    
 ])
}

}
