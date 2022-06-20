//
//  FirstVC.swift
//  MyProject
//
//  Created by Maxim Belyasov on 19.06.22.
//

import UIKit
import Firebase

class FirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func singOutButton(_ sender: UIBarButtonItem) {
        
        do {
            try Auth.auth().signOut()
        } catch {
            print(error.localizedDescription)
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func personalAccoutButton(_ sender: UIBarButtonItem) {
        
    }
    
    @IBAction func photoButton() {
    }
    
    @IBAction func newsButton() {
        
    }
    
    @IBAction func mapButton() {
    }
    
    @IBAction func storiesButton() {
    }
    
    
}
