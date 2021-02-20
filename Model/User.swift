//
//  User.swift
//  DemoFeb13
//
//  Created by Nami Mac on 2/20/21.
//  Copyright © 2021 NAMI. All rights reserved.
//

import UIKit

class User: NSObject {
    var email: String?
    var password: String?
    
    override init() {
        self.email = ""
        self.password = ""
    }
    
    init(email: String?, password: String?) {
        self.email = email
        self.password = password
    }
}
