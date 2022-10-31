//
//  ViewController.swift
//  HuamaniSnapchat
//
//  Created by Mac 06 on 31/10/22.
//

import UIKit
import Firebase
import FirebaseAuth


class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(with: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            print("Intentando sesión")
            if error != nil{
                print("Se presentó el siguiente error: \(error)")
            }else{
                print("Inicio de sesión exitoso")
            }
        }
    }

}

