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
        let emailFormat = "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"
        
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
    }

}
