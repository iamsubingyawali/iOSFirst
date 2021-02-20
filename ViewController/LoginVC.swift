//
//  ViewController.swift
//  DemoFeb13
//
//  Created by Nami Mac on 2/13/21.
//  Copyright © 2021 NAMI. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var lblLogin: UILabel!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var lblPass: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var btnReg: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnLogin(_ sender: Any) {
        let email = self.txtEmail.text
        let pass = self.txtPass.text
        print("\nEmail: \(email!)\nPassword: \(pass!)")
    }

    @IBAction func btnRegAction(_ sender: Any) {
        print("Not Registered")
        let signUpVC = UIStoryboard.init(name: StoryboardName.MAIN, bundle: nil).instantiateViewController(withIdentifier: StoryboardId.SIGNUP_VC) as! SignUpVC
        
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
}

