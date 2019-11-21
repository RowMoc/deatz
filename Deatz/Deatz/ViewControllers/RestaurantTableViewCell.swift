//
//  RestaurantTableViewCell.swift
//  Deatz
//
//  Created by Elina Thadhani on 11/20/19.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {


    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
