//
//  UsuarioScreen.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 31/03/22.
//
import UIKit

class UsuarioScreen: UIView {
    
    
    lazy var bookImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "bag")
        imagem.tintColor = .black
        return imagem
    }()

    
    lazy var nameLabel: UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.textColor = .black
         label.font = UIFont.boldSystemFont(ofSize: 18.0)
         label.text = "marcela_menezes.s"
         return label
     }()
    
    lazy var setImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "chevron.down")
        imagem.tintColor = .black
        return imagem
    }()
    
    lazy var addImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "plus.square")
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
    
    lazy var imagAvatar: UIImageView = {
        let imageView = UIImageView()
      //  imageView.backgroundColor = .blue
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:  "mmenezsi")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 75 / 2
      //  imageView.layer.borderWidth = 2.0
      //  imageView.layer.borderColor = UIColor.red.cgColor
        return imageView
    }()
    
    lazy var namLabel: UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.textColor = .black
         label.font = UIFont.boldSystemFont(ofSize: 15.0)
         label.text = "Marcela Menezes"
         return label
     }()
    
    lazy var  perfilButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Editar perfil", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.borderWidth = 0.5
        button.clipsToBounds = true
        button.layer.cornerRadius = 6.0
        button.backgroundColor = .white
        return button
    }()
    
    lazy var personImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.layer.borderWidth = 0.5
        imagem.layer.cornerRadius = 6.0
        imagem.image = UIImage(systemName: "person.badge.plus")
        imagem.tintColor = .black
        return imagem
    }()
    
    lazy var imag: UIImageView = {
        let imageView = UIImageView()
      //  imageView.backgroundColor = .blue
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:  "profile9")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 75 / 2
       // imageView.layer.borderWidth = 2.0
       // imageView.layer.borderColor = UIColor.gray.cgColor
        return imageView
    }()
    
    lazy var dogLabel: UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.textColor = .black
         label.font = UIFont.boldSystemFont(ofSize: 12.0)
         label.text = "My dog"
         return label
     }()
    
    lazy var imagem: UIImageView = {
        let imageView = UIImageView()
       // imageView.backgroundColor = .blue
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:  "profile8")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 75 / 2
       // imageView.layer.borderWidth = 2.0
       // imageView.layer.borderColor = UIColor.gray.cgColor
        return imageView
    }()
    
    lazy var circle: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "plus.circle")
        imagem.tintColor = .gray
        return imagem
    }()
    
    lazy var perfilLabel: UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.textColor = .black
         label.font = UIFont.boldSystemFont(ofSize: 12.0)
         label.text = "Moments"
         return label
     }()
    
    lazy var squareImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "square.grid.3x3")
        imagem.tintColor = .black
        return imagem
    }()
    
    lazy var squadImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "person.crop.square")
        imagem.tintColor = .black
        return imagem
    }()
    
        
    
    override init(frame: CGRect) {
     super.init(frame: frame)
     self.addSubview(self.bookImage)
     self.addSubview(self.nameLabel)
     self.addSubview(self.setImage)
     self.addSubview(self.addImage)
     self.addSubview(self.shoppImage)
     self.addSubview(self.imagAvatar)
     self.addSubview(self.perfilButton)
     self.addSubview(self.namLabel)
     self.addSubview(self.personImage)
     self.addSubview(self.imag)
     self.addSubview(self.dogLabel)
     self.addSubview(self.imagem)
     self.addSubview(self.circle)
     self.addSubview(self.perfilLabel)
     self.addSubview(self.squareImage)
     self.addSubview(self.squadImage)
     self.setUpConstraints()
 }
 
 required init?(coder: NSCoder) {
     fatalError("init(coder:) has not been implemented")
 }

 func setUpConstraints(){
    NSLayoutConstraint.activate([
        
    self.bookImage.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
    self.bookImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
  
    self.nameLabel.topAnchor.constraint(equalTo: self.bookImage.topAnchor),
    self.nameLabel.leadingAnchor.constraint(equalTo: self.bookImage.trailingAnchor, constant: 6),
    
    self.setImage.topAnchor.constraint(equalTo: self.nameLabel.topAnchor),
    self.setImage.leadingAnchor.constraint(equalTo: self.nameLabel.trailingAnchor, constant: 10),
    
    self.addImage.topAnchor.constraint(equalTo: self.bookImage.topAnchor),
    self.addImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
    
    self.shoppImage.topAnchor.constraint(equalTo: self.bookImage.topAnchor),
    self.shoppImage.leadingAnchor.constraint(equalTo: self.addImage.leadingAnchor, constant: 38),
    
    self.imagAvatar.topAnchor.constraint(equalTo: self.bookImage.topAnchor, constant: 40),
    self.imagAvatar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
    self.imagAvatar.widthAnchor.constraint(equalToConstant: 80),
    self.imagAvatar.heightAnchor.constraint(equalToConstant: 80),
    
    self.namLabel.topAnchor.constraint(equalTo: self.imagAvatar.bottomAnchor, constant: 6),
    self.namLabel.leadingAnchor.constraint(equalTo: self.imagAvatar.leadingAnchor),
    
    self.perfilButton.topAnchor.constraint(equalTo: self.namLabel.bottomAnchor, constant: 100),
    self.perfilButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
    self.perfilButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
    self.perfilButton.widthAnchor.constraint(equalToConstant: 30),
    self.perfilButton.heightAnchor.constraint(equalToConstant: 30),
    
    self.personImage.bottomAnchor.constraint(equalTo: self.perfilButton.topAnchor, constant: 28),
    self.personImage.leadingAnchor.constraint(equalTo: self.perfilButton.leadingAnchor, constant: 340),
//    self.personImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant:  -10),
    self.personImage.widthAnchor.constraint(equalToConstant: 30),
    self.personImage.heightAnchor.constraint(equalToConstant: 30),
    
    self.imag.topAnchor.constraint(equalTo: self.perfilButton.topAnchor, constant: 60),
    self.imag.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
    self.imag.widthAnchor.constraint(equalToConstant: 70),
    self.imag.heightAnchor.constraint(equalToConstant: 70),

    
    self.dogLabel.topAnchor.constraint(equalTo: self.imag.bottomAnchor, constant: 6),
    self.dogLabel.leadingAnchor.constraint(equalTo: self.imag.leadingAnchor, constant: 7),
    
    self.imagem.topAnchor.constraint(equalTo: self.perfilButton.topAnchor, constant: 60),
    self.imagem.leadingAnchor.constraint(equalTo: self.dogLabel.leadingAnchor, constant: 80),
    self.imagem.widthAnchor.constraint(equalToConstant: 70),
    self.imagem.heightAnchor.constraint(equalToConstant: 70),

    self.circle.topAnchor.constraint(equalTo: self.perfilButton.topAnchor, constant: 55),
    self.circle.leadingAnchor.constraint(equalTo: self.perfilLabel.leadingAnchor, constant: 80),
    self.circle.widthAnchor.constraint(equalToConstant: 80),
    self.circle.heightAnchor.constraint(equalToConstant: 80),

    
    self.perfilLabel.topAnchor.constraint(equalTo: self.imagem.bottomAnchor, constant: 6),
    self.perfilLabel.leadingAnchor.constraint(equalTo: self.imagem.leadingAnchor, constant: 7),

    self.squareImage.topAnchor.constraint(equalTo: self.perfilLabel.bottomAnchor, constant: 30),
    self.squareImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 110),
    
    self.squadImage.topAnchor.constraint(equalTo: self.perfilLabel.bottomAnchor, constant: 30),
    self.squadImage.leadingAnchor.constraint(equalTo: self.squareImage.leadingAnchor, constant: 150),
    
     ])
    
}
}
    

