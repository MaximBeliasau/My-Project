//
//  ceilingViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 6.06.22.
//

import UIKit

class CeilingViewController: UIViewController {
    var WallsSum  = ""
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            if let desination = segue.destination as? ResultViewController
//            {
//                desination.sumCeiling = allSumCeiling.text ?? "WTF"
//            }
//        }
//    
//
    @IBOutlet var gklSquare: UITextField!
    @IBOutlet var stretchSquare: UITextField!
    @IBOutlet var clothSquare: UITextField!
    @IBOutlet var monolithSquare: UITextField!
    @IBOutlet var otherCeilingSquare: UITextField!
    @IBOutlet var allCeilingSquare: UILabel!
    
    @IBOutlet var nextCeiling: UILabel!
    override func viewDidLoad(){
        print(WallsSum)
        super.viewDidLoad() }
    
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
            if let desination = segue.destination as? additionallyViewController
            {
                desination.CeilingSum = "\(Double(allSumCeiling.text ?? "")! + Double(WallsSum )!)"
            }
        }
    
    
    
//    var gklSquareDouble:Double = 3
//    var stretchSquareDouble:Double = 0
//    var clothSquareDouble:Double = 0
//    var monolithSquareDouble:Double = 0
//    var otherCeilingSquareDouble:Double = 0
//
//
//    var gklPrice:Double = 35
//    var stretchPrice:Double = 15
//    var clothPrice:Double = 25
//    var monolithPrice:Double = 25
//    var otherCeilingPrice:Double = 25
    
    //    let sumGkl = gklSquareDouble * gklPrice
    //    let sumStretch = stretchSquareDouble * stretchPrice
    //    let sumCloth = clothSquareDouble * clothPrice
    //    let sumMonolith = monolithSquareDouble * monolithPrice
    //    let sumOtherCeiling = otherCeilingSquareDouble * otherCeilingPrice
    //
    //
    //    let allSumCeiling = sumGkl + sumStretch + sumCloth + sumMonolith + sumOtherCeiling
    
    
    
}
