//
//  ResultViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 9.06.22.
//

import UIKit

class ResultViewController: UIViewController {
    var additionallySum = ""
    var FloorSquare = ""

    
//    let resultSum = sumFloor + sumWalls + sumCeiling + sumAdditionally
    
    @IBOutlet var resultSumLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(additionallySum)
        print(FloorSquare)

    }
    
    @IBAction func resultAction(_ sender: Any) {
        
        
//        resultSumLabel.text = "\(Double(allSumFloor.text ?? "")! + Double(allSumWalls.text ?? "")! + Double(allSumAdditionally.text ?? "")! + Double(allSumCeiling.text ?? "")!)"
//
        resultSumLabel.text = "\(Double(additionallySum)!)"

//        resultSumLabel.text = "\(Double(additionallySum)! + Double(FloorSquare)!)"
//        resultSumLabel.text = name
        resultSumLabel.isHidden = false
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
