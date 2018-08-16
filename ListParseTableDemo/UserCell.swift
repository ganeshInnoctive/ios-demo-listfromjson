//
//  UserCell.swift
//  ListParseTableDemo
//
//  Created by user140892 on 8/14/18.
//  Copyright © 2018 demo. All rights reserved.
//

import UIKit
import Kingfisher

class UserCell: UITableViewCell {

    @IBOutlet weak var imageViewUserPic: UIImageView!
    @IBOutlet weak var labelFirstName: UILabel!
    @IBOutlet weak var labelLastName: UILabel!
    
    func setDataToLayout(user: User){
        let url = URL(string: user.firstName)
        imageViewUserPic.kf.setImage(with: url)
        labelFirstName.text = user.firstName
        labelLastName.text = user.lastName
    }
}
