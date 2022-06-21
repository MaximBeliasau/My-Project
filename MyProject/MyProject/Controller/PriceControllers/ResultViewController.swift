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

    @IBOutlet var instructionLabel: UILabel!
    @IBOutlet var resultSumLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func resultAction(_ sender: Any) {
        resultSumLabel.text = "\(Double(additionallySum)!)"
        resultSumLabel.isHidden = false
        instructionLabel.isHidden = false
    }
}
