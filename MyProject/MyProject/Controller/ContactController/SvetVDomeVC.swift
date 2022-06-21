//
//  SvetVDomeVC.swift
//  MyProject
//
//  Created by Maxim Belyasov on 20.06.22.
//

import UIKit
import SafariServices

class SvetVDomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func newsButton() {
        if let url = URL(string: "https://svetvdome.by/") {
            let svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)
        }
    }

        @IBAction func newsButtonTwo() {
        if let url = URL(string: "https://www.instagram.com/svetvdome.by/") {
            let svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)
        }
    }
}

