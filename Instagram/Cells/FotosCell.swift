//
//  FotosCell.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 03/04/22.
//

//import UIKit
//
//class FotosCell: UITableViewCell {
//    
//    var fotoImageView = UIImageView()
//    var fotoTitleLabel = UILabel()
//    var avatarImageView = UIImageView()
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        addSubview(fotoImageView)
//        addSubview(fotoTitleLabel)
//        addSubview(avatarImageView)
//        
//        configureAvataImageView()
//        configureTitleLabel()
//        configureImageView()
//        setAvatarImageConstraints()
//        setTitleLabelConstraints()
//        setImageConstraints()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func configureAvataImageView() {
//        avatarImageView.layer.masksToBounds = true
//        avatarImageView.layer.cornerRadius = 75 / 2
//        
//    }
//    
//    func configureTitleLabel() {
//        fotoTitleLabel.numberOfLines = 0
//        fotoTitleLabel.adjustsFontSizeToFitWidth = true
//}
//    
//    func configureImageView() {
//        fotoImageView.layer.masksToBounds = true
//        fotoImageView.layer.cornerRadius = 10
//    }
//    
//    func setAvatarImageConstraints() {
//        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
//        avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
//        avatarImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
//        avatarImageView.widthAnchor.constraint(equalTo: avatarImageView.heightAnchor, multiplier: 16/9).isActive = true
//    }
//    
//    func setTitleLabelConstraints() {
//        fotoTitleLabel.translatesAutoresizingMaskIntoConstraints = false
//        fotoTitleLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor, constant: 20).isActive = true
//        fotoTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
//        fotoTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
//        
//    }
//    
//    func setImageConstraints() {
//        fotoImageView.translatesAutoresizingMaskIntoConstraints = false
//        fotoImageView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 25).isActive = true
//        fotoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
//        fotoImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
//    }
//}
