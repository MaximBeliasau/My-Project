//
//  additionallyViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 6.06.22.
//

import UIKit

class additionallyViewController: UIViewController {
    
    var CeilingSum  = ""

// 
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            if let desination = segue.destination as? ResultViewController
//            {
//                desination.sumAdditionally = allSumAdditionally.text ?? "WTF"
//            }
//        }
    
    
    @IBOutlet var warmFloor: UITextField!
    @IBOutlet var Insulation: UITextField!
    @IBOutlet var Electrician: UITextField!
    @IBOutlet var plumbing: UITextField!
    
    @IBOutlet var nextAdditionally: UILabel!
    
    @IBOutlet var allSumAdditionally: UILabel!
    
    
    
    override func viewDidLoad() {
        print(CeilingSum)

        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            if touches.first != nil {
                view.endEditing(true)
            }
            super.touchesBegan(touches, with: event)
        }
 
    @IBAction func Actionadditionally(_ sender: Any) {
       
        let warmFloorPrice:Double = 10
        let insulationPrice:Double = 10
        let electricianPrice:Double = 15
        let plumbingPrice:Double = 50
        
        allSumAdditionally.text = "\(Double(warmFloor.text ?? "")! * warmFloorPrice + Double(Insulation.text ?? "")! * insulationPrice + Double(Electrician.text ?? "")! * electricianPrice + Double(plumbing.text ?? "")! * plumbingPrice)"
        
        nextAdditionally.isHidden = false
      
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let desination = segue.destination as? ResultViewController
            {
                desination.additionallySum = "\(Double(allSumAdditionally.text ?? "")! + Double(CeilingSum )!)"
            }
        }
    
}
