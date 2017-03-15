//
//  Restaurant.swift
//  FoodTaskerMobile
//
//  Created by Developer on 2017-02-09.
//  Copyright © 2017 Mohammed Alghamdi. All rights reserved.
//

import Foundation
import SwiftyJSON

class Restaurant {
    
    var id: Int?
    var name: String?
    var address: String?
    var logo: String?
    
    init(json: JSON) {
        self.id = json["id"].int
        self.name = json["json"].string
        self.address = json["address"].string
        self.logo = json["logo"].string
    }
}
