//
//  Util.swift
//  DemoFeb13
//
//  Created by Nami Mac on 2/20/21.
//  Copyright © 2021 NAMI. All rights reserved.
//

import UIKit

class Util: NSObject {
    
    class func validateEmail(enteredEmail: String) -> Bool{
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
    }

}
