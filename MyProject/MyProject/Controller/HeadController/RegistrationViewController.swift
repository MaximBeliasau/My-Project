//
//  RegistrationViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 29.05.22.
//

import UIKit
import Firebase
class RegistrationViewController: UIViewController {
    var ref: DatabaseReference!
//создаем переменную при изменении которой будет срабатывать WILLSET
    var signup:Bool = true{
        willSet{
            if newValue{
                titleLabel.text = "Регистрация"
                nameField.isHidden = false
                loginButton.setTitle("Войти", for: .normal)
            }else{
                titleLabel.text = "Войти"
                nameField.isHidden = true
                
                loginButton.setTitle("Регистрация", for: .normal)
            }
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        ref = Database.database().reference(withPath: "users")

        Auth.auth().addStateDidChangeListener { [weak self] _, user in
            guard let _ = user else { return }
            self?.performSegue(withIdentifier: "StartViewController", sender: nil)
            self?.emailField.text = nil
            self?.passwordField.text = nil
        }
        
        
        
        nameField.delegate = self
        emailField.delegate = self
        passwordField.delegate = self
    }
    @IBAction func switchLogin(_ sender: UIButton) {
        signup = !signup
    }
    func showAlert(){
        let alert = UIAlertController(title: "Ошибка", message: "Заполните все поля", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
extension RegistrationViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let name = nameField.text!
        let email = emailField.text!
        let password = passwordField.text!
        if (signup){
            if (!name.isEmpty && !email.isEmpty && !password.isEmpty){
                Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                    if error == nil {
                        if let result = result{
                            print(result.user.uid)
                            let ref = Database.database().reference().child("users")
                            ref.child(result.user.uid).updateChildValues(["name" : name, "email" : email])
                            self.dismiss(animated: true, completion: nil)
                        }
                    }
                }
            }else{
                showAlert()
            }
        }else {
            if (!email.isEmpty && !password.isEmpty){
                Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                    if error == nil {
                        self.dismiss(animated: true, completion: nil)
                    }
                }
            }else{
                showAlert()

            }

        }
        return true
    }

}
