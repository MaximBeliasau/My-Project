//
//  wallsViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 6.06.22.
//

import UIKit



class wallsViewController: UIViewController {

    var FloorSum = ""


    
    @IBOutlet var wallpaperSquare: UITextField!
    @IBOutlet var paintingSquare: UITextField!
    @IBOutlet var simpleDecorSquare: UITextField!
    @IBOutlet var complexDecorSquare: UITextField!
    @IBOutlet var tileSquare: UITextField!
    @IBOutlet var gypsumPanelsSquare: UITextField!
    @IBOutlet var pictureSquare: UITextField!
    @IBOutlet var otherWallSquare: UITextField!
    @IBOutlet var allWallSquare: UILabel!
    
    @IBOutlet var nextWall: UILabel!
    
    @IBOutlet var allSumWalls: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
print(FloorSum)
    }
   
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            if touches.first != nil {
                view.endEditing(true)
            }
            super.touchesBegan(touches, with: event)
        }
    
    @IBAction func ActionWall(_ sender: Any) {
        
        
       
        allWallSquare.text = "\(Double(wallpaperSquare.text ?? "")! + Double(paintingSquare.text ?? "")! + Double(simpleDecorSquare.text ?? "")! + Double(complexDecorSquare.text ?? "")! + Double(tileSquare.text ?? "")! + Double(gypsumPanelsSquare.text ?? "")! + Double(pictureSquare.text ?? "")!)"
        
        
        let wallpaperPrice:Double = 17
        let paintingPrice:Double = 23
        let simpleDecorPrice:Double = 33
        let complexDecorPrice:Double = 43
        let tilePrice:Double = 30
            let gypsumPanelsPrice:Double = 30
            let picturePrice:Double = 70

        
        allSumWalls.text = "\(Double(wallpaperSquare.text ?? "")! * wallpaperPrice + Double(paintingSquare.text ?? "")! * paintingPrice + Double(simpleDecorSquare.text ?? "")! * simpleDecorPrice + Double(complexDecorSquare.text ?? "")! * complexDecorPrice + Double(tileSquare.text ?? "")! * tilePrice + Double(gypsumPanelsSquare.text ?? "")! * gypsumPanelsPrice + Double(pictureSquare.text ?? "")! * picturePrice)"
        
        
        nextWall.isHidden = false

    }
 
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let desination = segue.destination as? CeilingViewController
            {
                desination.WallsSum = "\(Double(allSumWalls.text ?? "")! + Double(FloorSum )!)"
            }
        }
}
