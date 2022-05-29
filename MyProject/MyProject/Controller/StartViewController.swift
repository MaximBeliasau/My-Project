//
//  StartViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 29.05.22.
//

import UIKit
import Firebase

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutAction(_ sender: Any) {
        do{
            try Auth.auth().signOut()
        }catch{
            print(error)
        }
    }
}
