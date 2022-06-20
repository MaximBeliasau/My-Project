//
//  FloorViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 30.05.22.
//

import UIKit

class FloorViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let desination = segue.destination as? wallsViewController
            {
                desination.FloorSum = allSumFloor.text ?? ""
                
            }
        }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            if let desination = segue.destination as? ResultViewController
//            {
//                desination.FloorSquare = allFloorSquare.text ?? ""
//                
//            }
//        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
//        var laminateSquareDouble = 0
//        var parquetBootDoscaSquareDouble:Double = 0
//        var parquetArtificialSquareDouble:Double = 0
//        var tetkaSquareDouble:Double = 0
//        var linoliumSquareDouble:Double = 0
//        var quartzvinilSquareDouble:Double = 0
//        var otherFloorSquareDouble:Double = 0
//    
//        var allFloorSquareDouble:Double = 0
    
    
//        func hi () {
//
//
//
//
//            allFloorSquare.text = "\(Double(laminateSquare.text ?? "")! * laminatePrice)"
//
//
//        }
//
//
    @IBAction func ActionFloor(_ sender: Any) {
        
       
       
        allFloorSquare.text = "\(Double(laminateSquare.text ?? "")! + Double(parquetBootDoscaSquare.text ?? "")! + Double(parquetArtificialSquare.text ?? "")! + Double(tetkaSquare.text ?? "")! + Double(linoliumSquare.text ?? "")! + Double(quartzvinilSquare.text ?? "")! + Double(otherFloorSquare.text ?? "")!)"
        
//        let allFloorSquareSum = \(Double(allFloorSquare.text ?? "")!

        
              let laminatePrice:Double = 10
            let parquetBootDoscaPrice:Double = 16
            let parquetArtificialPrice:Double = 26
            let tetkaPrice:Double = 26
            let linoliumPrice:Double = 9
            let quartzvinilPrice:Double = 10
            let otherFloorPrice:Double = 16
//            let PreparationOfTheFloorPrice:Double = 5

//            allSumFloor.text = "\(Double(laminateSquare.text ?? "")! * laminatePrice) "
            
        
        allSumFloor.text = "\(Double(laminateSquare.text ?? "")! * laminatePrice + Double(parquetBootDoscaSquare.text ?? "")! * parquetBootDoscaPrice + Double(parquetArtificialSquare.text ?? "")! * parquetArtificialPrice + Double(tetkaSquare.text ?? "")! * tetkaPrice + Double(linoliumSquare.text ?? "")! * linoliumPrice + Double(quartzvinilSquare.text ?? "")! * quartzvinilPrice + Double(otherFloorSquare.text ?? "")! * otherFloorPrice)"
        
        
        nextFloor.isHidden = false
      
    }
    
   
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            guard segue.identifier == "showSecond" else { return }
//            guard let destination = segue.destination as? ResultViewController else { return }
//            destination.name = "Андрей"
//        }
    
    
    
    
    
    
    
//    func allSumFloorLabel () {
//            let laminateSquareDouble = laminateSquare.text
//
//        allSumFloor.text = "\(Double(laminateSquareDouble ?? "")! * laminatePrice)"
//        }
    
    
    
    
//    let sumlaminate = \Double(laminateSquareDouble ?? "")!
    
    
    
    
    
    
   
    
   
   
    

//    повесить экщн и сложить все значения
    
    
    
    
    
//    func hi () {
//        let first = laminateSquare.text
//
//
//
//        allFloorSquare.text = "\(Double(first ?? "")! * laminatePrice)"
//
//
//    }
    
    
    
    
    

    
//    let parquetBootDoscaPrice:Double = 10
//    let parquetArtificialPrice:Double = 15
//    let tetkaPrice:Double = 18
//    let linoliumPrice:Double = 3
//    let quartzvinilPrice:Double = 4
//    let otherFloorPrice:Double = 10
//    let PreparationOfTheFloorPrice:Double = 5

//    let sumlaminate = laminateSquareDouble * laminatePrice
//
//    let sumparquetBootDosca = parquetBootDoscaSquareDouble * parquetBootDoscaPrice
//    let sumparquetArtificial = parquetArtificialSquareDouble * parquetArtificialPrice
//    let sumtetka = tetkaSquareDouble * tetkaPrice
//    let sumlinolium = linoliumSquareDouble * linoliumPrice
//    let sumquartzvinil = quartzvinilSquareDouble * quartzvinilPrice
//    let sumotherFloor = otherFloorSquareDouble * otherFloorPrice
//    let sumPreparationOfTheFloor = allFloorSquareDouble * PreparationOfTheFloorPrice
//
//    let allSumFloor = sumPreparationOfTheFloor + sumlaminate + sumparquetBootDosca + parquetArtificialPrice + tetkaPrice + linoliumPrice + quartzvinilPrice + otherFloorPrice
//
    
    
    
    
    
   
//    let sum = "((Int(laminatSquare.text!)!) + (Int(parketDoscaSquare.text!)!))"
//
//
//    let double = Double(tv1.text!)
//    let double2 = Double(tv2.text!)

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    //    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    //        if touches.first != nil {
    //            view.endEditing(true)
    //        }
    //        super.touchesBegan(touches, with: event)
    //    }
    //  скрывает
    //    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    //        textField.resignFirstResponder()
    //        return true
    //    }
    
}
