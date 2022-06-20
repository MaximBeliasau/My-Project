//
//  ceilingViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 6.06.22.
//

import UIKit

class CeilingViewController: UIViewController {
    
    @IBOutlet var gklSquare: UITextField!
    @IBOutlet var stretchSquare: UITextField!
    @IBOutlet var clothSquare: UITextField!
    @IBOutlet var monolithSquare: UITextField!
    @IBOutlet var otherCeilingSquare: UITextField!
    @IBOutlet var allCeilingSquare: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad() }
    
    
    
    @IBAction func ActionCelling(_ sender: Any) {
        
        
       
        allCeilingSquare.text = "\(Double(gklSquare.text ?? "")! + Double(stretchSquare.text ?? "")! + Double(clothSquare.text ?? "")! + Double(monolithSquare.text ?? "")! + Double(otherCeilingSquare.text ?? "")!)"
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
