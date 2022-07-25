//
//  StoriesViewController.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 31/03/22.
//

import UIKit

class StoriesViewController: UIViewController, UICollectionViewDataSource {
   
    var collection: UICollectionView?
   // var tableView = PostHomeTableViewCell()
    
    let stories: [String] = ["profile3", "profile4", "profile1", "profile", "profile4", "profile5", "profile6", "profile7", "profile8", "profile", "profile1", "profile2", "profile3", "profile2", "profile5", "profile6", "profile7", "profile3", "profile9"]
    
    override func viewDidLoad() {
    super.viewDidLoad()

        
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 75, height: 75)
        layout.sectionInset = UIEdgeInsets(top: 0.0, left: 16.0, bottom: 0.0, right: 16.0)
        
        
        collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection?.backgroundColor = .clear
        collection?.dataSource = self
        collection?.showsHorizontalScrollIndicator = false
        collection?.register(AvatarCell.self, forCellWithReuseIdentifier: AvatarCell.identifier)

        
        
        
        guard let myCollection = collection else {return}
    
        
        view.addSubview(myCollection)

    }

  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AvatarCell.identifier, for: indexPath) as! AvatarCell
        cell.configureCell(imageName: stories[indexPath.row])
       return cell
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collection?.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 75)
       
         
    }
    
}

