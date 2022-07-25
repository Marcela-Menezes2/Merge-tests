//
//  PostCell.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 31/03/22.
//

import UIKit

class PostHomeTableViewCell: UITableViewCell {
    
    
    static let identifier = "PostHomeTableViewCell"
    
    lazy var headerFeedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var userProfileImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 40 / 2
        image.image = UIImage(named: "mmenezsi")
        image.layer.borderColor = UIColor.red.cgColor
        return image
    }()
    
    lazy var labelText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.text = "Marcela"
        return label
    }()
//    
    lazy var subtitleText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "há 2hr"
        return label
    }()
    
    
   
    
    lazy var imagePost: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.layer.masksToBounds = true
       // image.layer.cornerRadius = 40 / 2
        image.image = UIImage(named: "profile1")
       // image.layer.borderColor = UIColor.red.cgColor
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(headerFeedView)
        contentView.addSubview(userProfileImage)
        contentView.addSubview(labelText)
        contentView.addSubview(imagePost)
        contentView.addSubview(subtitleText)
        
        
        setupConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell( name: String, hora: String, imageFeed: String){

         //  imageEye.image = UIImage(named: imageName)

            labelText.text = name
        
            subtitleText.text = hora
        
            imagePost.image = UIImage(named: imageFeed)

        }
    
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            
            headerFeedView.topAnchor.constraint(equalTo: self.topAnchor),
            headerFeedView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            headerFeedView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            headerFeedView.heightAnchor.constraint(equalToConstant: 50),
            
            userProfileImage.topAnchor.constraint(equalTo: self.headerFeedView.topAnchor),
            userProfileImage.leadingAnchor.constraint(equalTo: self.headerFeedView.leadingAnchor,constant: 5),
            userProfileImage.heightAnchor.constraint(equalToConstant: 40),
            userProfileImage.widthAnchor.constraint(equalToConstant: 40),
            
            labelText.topAnchor.constraint(equalTo: self.userProfileImage.topAnchor, constant: 10),
            labelText.leadingAnchor.constraint(equalTo: self.userProfileImage.trailingAnchor, constant: 20),
            
            imagePost.topAnchor.constraint(equalTo: self.headerFeedView.bottomAnchor),
            imagePost.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imagePost.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imagePost.heightAnchor.constraint(equalToConstant: 350),
//            imagePost.widthAnchor.constraint(equalToConstant: 180),
            
            subtitleText.topAnchor.constraint(equalTo: self.labelText.topAnchor, constant: 10),
            subtitleText.leadingAnchor.constraint(equalTo: self.userProfileImage.trailingAnchor, constant: 10),
            
           
            
            
            
        
        ])
    }
}

//class FeedTableViewCell: UITableViewCell {
//
//    var feedTableViewCell = FeedTableViewCell()
//
//static let identifier = "FeedTableViewCell"
//let feedPost: UIImageView = {
//let iv = UIImageView()
//    iv.image = UIImage(named: "profile5")
//iv.contentMode = .scaleAspectFit
//iv.translatesAutoresizingMaskIntoConstraints = false
//return iv
//}()
//
//let username: UILabel = {
//    let lb = UILabel()
//    lb.translatesAutoresizingMaskIntoConstraints = false
//    lb.font = UIFont.systemFont(ofSize: 14, weight: .regular)
//    lb.textColor = .white
//    return lb
//}()
//
//var userAvatar: UIImageView = {
//    let iv = UIImageView()
//    iv.translatesAutoresizingMaskIntoConstraints = false
//    iv.image = UIImage(named: "profile5")
//    return iv
//}()
//
//var priceBit:  UILabel = {
//    let lb = UILabel()
//    lb.translatesAutoresizingMaskIntoConstraints = false
//    lb.font = UIFont.systemFont(ofSize: 17, weight: .bold)
//    lb.textColor = .white
//    lb.textAlignment = .right
//    return lb
//}()
//
//override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//    super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//    contentView.addSubview(userAvatar)
//    contentView.addSubview(username)
//    contentView.addSubview(feedPost)
//    contentView.addSubview(priceBit)
//
//    userAvatar.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
//    userAvatar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6).isActive = true
//    userAvatar.widthAnchor.constraint(equalToConstant: 25).isActive = true
//    userAvatar.heightAnchor.constraint(equalToConstant: 25).isActive = true
//
//    NSLayoutConstraint.activate([
//        feedPost.topAnchor.constraint(equalTo: userAvatar.topAnchor),
//        feedPost.leftAnchor.constraint(equalTo: userAvatar.rightAnchor, constant: 12),
//        feedPost.widthAnchor.constraint(equalToConstant: 100),
//
//       username.topAnchor.constraint(equalTo: userAvatar.bottomAnchor, constant: 4),
//        username.leftAnchor.constraint(equalTo: userAvatar.rightAnchor, constant: 12),
//        username.widthAnchor.constraint(equalToConstant: 100),
//
//        priceBit.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//        priceBit.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
//        priceBit.widthAnchor.constraint(equalToConstant: 120)
//
//    ])
//}
//
//required init?(coder aDecoder: NSCoder) {
//    fatalError("init(coder:) has not been implemented")
//}
//
//override func setSelected(_ selected: Bool, animated: Bool) {
//     super.setSelected(selected, animated: animated)
//
//    if !selected {
//        contentView.backgroundColor = .black
//     } else {
//         contentView.backgroundColor = .black
//     }
// }
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//       userAvatar.layer.cornerRadius = userAvatar.frame.size.width / 2
//    }
//}
