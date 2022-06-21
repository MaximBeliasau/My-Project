//
//  StroyMaserVC.swift
//  MyProject
//
//  Created by Maxim Belyasov on 20.06.22.
//

import UIKit
import SafariServices
class StroyMaserVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func newButton() {
        if let url = URL(string: "https://www.stroy-master.by/") {
            let svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)
        }
     }
}
