//
//  СeilingViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 6.06.22.
//

import UIKit

class CeilingViewController: UIViewController {
    var wallsSum  = ""

    @IBOutlet var gklSquare: UITextField!
    @IBOutlet var stretchSquare: UITextField!
    @IBOutlet var clothSquare: UITextField!
    @IBOutlet var monolithSquare: UITextField!
    @IBOutlet var otherCeilingSquare: UITextField!
    @IBOutlet var allCeilingSquare: UILabel!
    @IBOutlet var nextCeiling: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet var allSumCeiling: UILabel!
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            if touches.first != nil {
                view.endEditing(true)
            }
            super.touchesBegan(touches, with: event)
        }
    
    @IBAction func ActionCelling(_ sender: Any) {
        allCeilingSquare.text = "\(Double(gklSquare.text ?? "")! + Double(stretchSquare.text ?? "")! + Double(clothSquare.text ?? "")! + Double(monolithSquare.text ?? "")! + Double(otherCeilingSquare.text ?? "")!)"
        
            let gklPrice:Double = 35
            let stretchPrice:Double = 15
            let clothPrice:Double = 25
            let monolithPrice:Double = 25
            let otherCeilingPrice:Double = 25
        
        allSumCeiling.text = "\(Double(gklSquare.text ?? "")! * gklPrice + Double(stretchSquare.text ?? "")! * stretchPrice + Double(clothSquare.text ?? "")! * clothPrice + Double(monolithSquare.text ?? "")! * monolithPrice + Double(otherCeilingSquare.text ?? "")! * otherCeilingPrice)"
        
        nextCeiling.isHidden = false
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let desination = segue.destination as? AdditionallyViewController
            {
                desination.CeilingSum = "\(Double(allSumCeiling.text ?? "")! + Double(wallsSum )!)"
            }
        }
}
