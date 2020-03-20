//
//  LoginViewController.swift
//  pastagram
//
//  Created by Deon Labrador on 3/19/20.
//  Copyright © 2020 Deon Labrador. All rights reserved.
//

import UIKit

import Parse
class LoginViewController: UIViewController {

   @IBOutlet weak var userNameField: UITextField!
    
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signInButton(_ sender: Any) {
        
        let username = userNameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginToFeed", sender: nil)
            }else{
                print("you have encountered an error")
            }
        }
    }
    
     @IBAction func signUpButton(_ sender: Any) {
        let user = PFUser()
        user.username = userNameField.text
        user.password = passwordField.text
        
        user.signUpInBackground {(success, error) in
            if success{
                self.performSegue(withIdentifier: "loginToFeed", sender: nil)
            }else{
                print("you have encountered an error")
            }
            
        }
    

     }


}
