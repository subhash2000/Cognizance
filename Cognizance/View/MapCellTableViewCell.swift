//
//  MapCellTableViewCell.swift
//  Cognizance
//
//  Created by Subhash  on 1/29/20.
//  Copyright © 2020 Subhash . All rights reserved.
//

import UIKit

class MapCellTableViewCell: UITableViewCell {

    let placelabel: UILabel = {
        let label = UILabel()
               label.textColor = .blue
        
               label.font = UIFont.systemFont(ofSize: 20)
               label.text = "Sample text"
               return label
    }()
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
   super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.contentView.addSubview(placelabel)
    placelabel.frame = CGRect(x: 0, y: 0, width: 300, height: 40)
//    placelabel.translatesAutoresizingMaskIntoConstraints = false
//           placelabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//           placelabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
//           placelabel.heightAnchor.constraint(equalToConstant: 10).isActive = true
//    placelabel.widthAnchor.constraint(equalToConstant: view.frame.wifth-20).isActive = true

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
