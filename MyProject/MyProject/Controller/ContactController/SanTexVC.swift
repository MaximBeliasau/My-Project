//
//  SanTexVC.swift
//  MyProject
//
//  Created by Maxim Belyasov on 19.06.22.
//

import UIKit
import SafariServices

class SanTexVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func newsButton() {
            if let url = URL(string: "https://san-tex.by") {
                let svc = SFSafariViewController(url: url)
                present(svc, animated: true, completion: nil)
            }
        }
    @IBAction func newsButtonTwo() {
        if let url = URL(string: "https://www.instagram.com/santexby/") {
            let svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)
        }
        
    }
}
