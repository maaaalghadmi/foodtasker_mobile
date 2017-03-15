//
//  FBManager.swift
//  FoodTaskerMobile
//
//  Created by Developer on 2017-01-31.
//  Copyright © 2017 Mohammed Alghamdi. All rights reserved.
//

import Foundation
import FBSDKLoginKit
import SwiftyJSON


class FBManager {
    
    static let shared = FBSDKLoginManager()
    
    public class func getFBUserData(completionHandler: @escaping () -> Void) {
     
        if (FBSDKAccessToken.current() != nil) {
            
            FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "name, email, picture.type(normal)"]).start(completionHandler: { (connection, result, error) in
                    
                    if (error == nil) {
                        let json = JSON(result!)
                        print(json)
                        
                        User.currentUser.setInfo(json: json)
                        
                        completionHandler()
                }
            })
        }
    }
}
