//
//  AdminVC.swift
//  MyProject
//
//  Created by Maxim Belyasov on 21.06.22.
//

import UIKit
import SafariServices

class AdminVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func newsButton() {
            if let url = URL(string: "https://www.instagram.com/maxim_belyasov/") {
                let svc = SFSafariViewController(url: url)
                present(svc, animated: true, completion: nil)
            }
        }
}
