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
    @IBOutlet var allCailingSquare: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
        
        
        // Do any additional setup after loading the view.
    }
    
    var gklSquareDouble:Double = 3
    var stretchSquareDouble:Double = 0
    var clothSquareDouble:Double = 0
    var monolithSquareDouble:Double = 0
    var otherCeilingSquareDouble:Double = 0
   
    
    var gklPrice:Double = 35
    var stretchPrice:Double = 15
    var clothPrice:Double = 25
    var monolithPrice:Double = 25
    var otherCeilingPrice:Double = 25
   
//    let sumGkl = gklSquareDouble * gklPrice
//    let sumStretch = stretchSquareDouble * stretchPrice
//    let sumCloth = clothSquareDouble * clothPrice
//    let sumMonolith = monolithSquareDouble * monolithPrice
//    let sumOtherCeiling = otherCeilingSquareDouble * otherCeilingPrice
//
//
//    let allSumCeiling = sumGkl + sumStretch + sumCloth + sumMonolith + sumOtherCeiling
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
