//
//  RequestViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 8.06.22.
//

import UIKit

class RequestViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            if touches.first != nil {
                view.endEditing(true)
            }
            super.touchesBegan(touches, with: event)
        }
}
