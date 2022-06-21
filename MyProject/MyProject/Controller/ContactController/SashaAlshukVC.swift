//
//  SashaAlshukVC.swift
//  MyProject
//
//  Created by Maxim Belyasov on 19.06.22.
//

import UIKit
import SafariServices
class SashaAlshukVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func newsButton() {
            if let url = URL(string: "https://www.instagram.com/sasha_alshuk/") {
                let svc = SFSafariViewController(url: url)
                present(svc, animated: true, completion: nil)
            }
        }
}
