//
//  MileVC.swift
//  MyProject
//
//  Created by Maxim Belyasov on 20.06.22.
//

import UIKit
import SafariServices
class MileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func newButton() {
        
        
        if let url = URL(string: "https://www.mile.by/") {
            let svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)
        }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
