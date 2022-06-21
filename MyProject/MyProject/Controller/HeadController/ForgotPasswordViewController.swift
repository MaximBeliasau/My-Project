//
//  ForgotPasswordViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 29.05.22.
//

import UIKit
import Firebase

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        let email = emailField.text!
        if(!email.isEmpty){
            Auth.auth().sendPasswordReset(withEmail: email) { (error) in
                if error == nil {
                    self.dismiss(animated: true, completion: nil)
                }
            }
        }
    }

    @IBAction func closeAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
