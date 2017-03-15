//
//  RestaurantViewCell.swift
//  FoodTaskerMobile
//
//  Created by Developer on 2017-02-09.
//  Copyright © 2017 Mohammed Alghamdi. All rights reserved.
//

import UIKit

class RestaurantViewCell: UITableViewCell {

    @IBOutlet weak var lbRestaurantName: UILabel!
    @IBOutlet weak var lbRestaurantAddress: UILabel!
    
    @IBOutlet weak var imgRestaurantLogo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
