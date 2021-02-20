//
//  User.swift
//  DemoFeb13
//
//  Created by Subin Gyawali on 2/20/21.
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
    
    func validate(email: String, password: String) -> Validation {
        let validation = Validation.init(status: true, message: "Success")
        
        if (!Util.validateEmail(enteredEmail: email)){
            validation.status = false
            validation.message = "Invalid Email"
            return validation
        }
        
        if (password.count == 0){
            validation.status = false
            validation.message = "Empty Password"
            return validation
        }
        
        return validation
    }
}
