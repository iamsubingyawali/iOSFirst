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
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        print("awakeFromNib")
    }
    
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("didReceiveMemoryWarning")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

    @IBAction func btnLogin(_ sender: Any) {
        let email = self.txtEmail.text
        let pass = self.txtPass.text
        print("\nEmail: \(email!)\nPassword: \(pass!)")
        
        let user = User.init(email: email, password: pass)
        
        let validation = user.validate()
        
        if(validation.status){
            print("Go to Home Screen")
            let mainTbVC = UIStoryboard.init(name: StoryboardName.HOME, bundle: nil).instantiateViewController(withIdentifier: StoryboardId.DEMO_TAB_BAR) as! DemoTabbarController
            self.navigationController?.pushViewController(mainTbVC, animated: true)
        }
        else{
            print("Validation Failed: \(validation.message)")
        }
    }

    @IBAction func btnRegAction(_ sender: Any) {
        print("Not Registered")
        let signUpVC = UIStoryboard.init(name: StoryboardName.MAIN, bundle: nil).instantiateViewController(withIdentifier: StoryboardId.SIGNUP_VC) as! SignUpVC
        
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    
    
}

