//
//  Validation.swift
//  DemoFeb13
//
//  Created by Nami Mac on 2/20/21.
//  Copyright © 2021 NAMI. All rights reserved.
//

import UIKit

class Validation: NSObject {
    var status: Bool
    var message: String
    
    override init() {
        self.status = false
        self.message = ""
    }
    
    init(status: Bool, message: String) {
        self.status = status
        self.message = message
    }
}
