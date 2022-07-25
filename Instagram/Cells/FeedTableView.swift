//
//  FeedTableView.swift
//  Instagram
//
//  Created by Marcela Menezes Silva on 05/04/22.
//

import Foundation


import UIKit

class StatusTableView: UIView {
    
    let stories: [String] = ["status", "status1", "status2", "status3", "status4", "status5", "status", "status7", "status8", "profile9", "status", "status1", "status2", "status3", "status4", "status5", "status", "status7", "status8", "profile9", ]
   let labelText: [String] = ["Ana", "Marina", "Natanael", "Laura", "Claudia", "Wender", "Pedro", "Marcia", "Victor", "Sabrina", "Guilherme", "Gustavo", "Tatiana", "Joaquim", "Severino", "Roberta", "Fabio", "Viviane", "Victoria", "Ana", "Marina", "Natanael", "Laura", "Claudia", "Wender", "Pedro", "Marcia", "Victor", "Sabrina", "Guilherme", "Gustavo", "Tatiana", "Joaquim", "Severino", "Roberta", "Fabio", "Viviane"]
    let horaText: [String] = ["há 2hr", "há 3hr", "há 4hr", "há 8hr", "há 1hr", "há 7hr", "há 2hr", "há 3hr", "há 4hr", "há 5hr", "há 9hr", "há 2hr", "há 3hr", "há 4hr", "há 6hr", "há 7hr", "há 5hr", "há 4hr", "há 1hr", "há 2hr", "há 3hr", "há 4hr", "há 8hr", "há 1hr", "há 7hr", "há 2hr", "há 3hr", "há 4hr", "há 5hr", "há 9hr", "há 1hr", "há 7hr", "há 2hr", "há 3hr", "há 4hr", "há 5hr", "há 9hr", "há 2hr", "há 3hr", "há 4hr", "há 6hr", "há 7hr", "há 5hr", "há 4hr", "há 1hr"]
    let imagePost: [String] = ["status", "status1", "status2", "status3", "status4", "status5", "status", "status7", "status8", "profile9", "Guilherme", "Gustavo", "Tatiana", "Joaquim", "Severino", "Roberta", "Fabio", "Viviane", "Victoria", "Ana", "Marina", "Natanael", "Laura", "Claudia", "Wender", "Pedro", "Marcia", "Victor", "Sabrina", "Guilherme", "Gustavo", "Tatiana", "Joaquim", "Severino", "Roberta", "Fabio", "Viviane"]
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(PostHomeTableViewCell.self, forCellReuseIdentifier: "PostHomeTableViewCell")
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        tableView.dataSource = self
        tableView.autoresizingMask = .flexibleHeight
        tableView.isScrollEnabled = true
        tableView.delegate = self
        self.addSubview(tableView)
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        
        ])
    }
    
}

extension StatusTableView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labelText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostHomeTableViewCell.identifier, for:  indexPath) as! PostHomeTableViewCell
        
      cell.configureCell(name: labelText[indexPath.row], hora: horaText[indexPath.row], imageFeed: imagePost[indexPath.row])
        return cell
    }
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }

    
}
