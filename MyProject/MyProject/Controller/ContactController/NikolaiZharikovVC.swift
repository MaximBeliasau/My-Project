//
//  NikolaiZharikovVC.swift
//  MyProject
//
//  Created by Maxim Belyasov on 19.06.22.
//

import UIKit
import SafariServices
class NikolaiZharikovVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func newsButton() {
            if let url = URL(string: "https://www.instagram.com/remont_i_otdelka.by/") {
                let svc = SFSafariViewController(url: url)
                present(svc, animated: true, completion: nil)
            }
        }
}
