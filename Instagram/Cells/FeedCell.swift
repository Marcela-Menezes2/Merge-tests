//
//  FeedCell.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 31/03/22.
//

import UIKit

class FeedCell: UITableViewCell {
    
    static let identifier = "FeedCell"
    
    lazy var imgAvatar: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "profile3")
        return image
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(post:FeedPost) {
        imgAvatar.image = UIImage(named: "profile3")
    }

}
