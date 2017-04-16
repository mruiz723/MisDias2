//
//  LoginViewController.swift
//  MisDias
//
//  Created by Marlon David Ruiz Arroyave on 8/04/17.
//  Copyright © 2017 Eafit. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var user = ["user":"mruiz", "password": "ju89'"]
    
    //MARK: - IBOutlets
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var paswordTextField: UITextField!

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - IBActions
    
    @IBAction func login(_ sender: Any) {
        if userTextField.text == user["user"] && paswordTextField.text == user["password"] {
            
            performSegue(withIdentifier: "menuDay", sender: nil)
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
