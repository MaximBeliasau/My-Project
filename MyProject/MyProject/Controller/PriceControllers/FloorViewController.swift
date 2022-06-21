//
//  FloorViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 30.05.22.
//

import UIKit

class FloorViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let desination = segue.destination as? WallsViewController
            {
                desination.FloorSum = allSumFloor.text ?? ""
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            if touches.first != nil {
                view.endEditing(true)
            }
            super.touchesBegan(touches, with: event)
        }
    
    @IBOutlet var laminateSquare: UITextField!
    @IBOutlet var parquetBootDoscaSquare: UITextField!
    @IBOutlet var parquetArtificialSquare: UITextField!
    @IBOutlet var tetkaSquare: UITextField!
    @IBOutlet var linoliumSquare: UITextField!
    @IBOutlet var quartzvinilSquare: UITextField!
    @IBOutlet var otherFloorSquare: UITextField!
    @IBOutlet var allFloorSquare: UILabel!
    @IBOutlet var nextFloor: UILabel!
    @IBOutlet var allSumFloor: UILabel!
    @IBAction func ActionFloor(_ sender: Any) {
        
        allFloorSquare.text = "\(Double(laminateSquare.text ?? "")! + Double(parquetBootDoscaSquare.text ?? "")! + Double(parquetArtificialSquare.text ?? "")! + Double(tetkaSquare.text ?? "")! + Double(linoliumSquare.text ?? "")! + Double(quartzvinilSquare.text ?? "")! + Double(otherFloorSquare.text ?? "")!)"
        
            let laminatePrice:Double = 10
            let parquetBootDoscaPrice:Double = 16
            let parquetArtificialPrice:Double = 26
            let tetkaPrice:Double = 26
            let linoliumPrice:Double = 9
            let quartzvinilPrice:Double = 10
            let otherFloorPrice:Double = 16

        allSumFloor.text = "\(Double(laminateSquare.text ?? "")! * laminatePrice + Double(parquetBootDoscaSquare.text ?? "")! * parquetBootDoscaPrice + Double(parquetArtificialSquare.text ?? "")! * parquetArtificialPrice + Double(tetkaSquare.text ?? "")! * tetkaPrice + Double(linoliumSquare.text ?? "")! * linoliumPrice + Double(quartzvinilSquare.text ?? "")! * quartzvinilPrice + Double(otherFloorSquare.text ?? "")! * otherFloorPrice)"
        
        nextFloor.isHidden = false
    }

}
