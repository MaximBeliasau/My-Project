//
//  wallsViewController.swift
//  MyProject
//
//  Created by Maxim Belyasov on 6.06.22.
//

import UIKit




class wallsViewController: UIViewController {

    @IBOutlet var wallpaperSquare: UITextField!
    @IBOutlet var paintingSquare: UITextField!
    @IBOutlet var simpleDecorSquare: UITextField!
    @IBOutlet var complexDecorSquare: UITextField!
    @IBOutlet var tileSquare: UITextField!
    @IBOutlet var gypsumPanelsSquare: UITextField!
    @IBOutlet var pictureSquare: UITextField!
    @IBOutlet var otherWallSquare: UITextField!
    @IBOutlet var allWallSquare: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    var wallpaperSquareDouble:Double = 10
    var paintingSquareDouble:Double = 15
    var simpleDecorSquareDouble:Double = 40
    var complexDecorSquareDouble:Double = 0
    var tileSquareDouble:Double = 12
    var gypsumPanelsSquareDouble:Double = 16
    var pictureSquareDouble:Double = 20
    var otherWallSquareDouble:Double = 4
   
    var allWallSquareDouble:Double = 0
    
    var wallpaperPrice:Double = 4
    var paintingPrice:Double = 15
    var simpleDecorPrice:Double = 20
    var complexDecorPrice:Double = 30
    var tilePrice:Double = 18
    var gypsumPanelsPrice:Double = 20
    var picturePrice:Double = 50
    var otherWallPrice:Double = 20
    let PreparationOfTheWallPrice:Double = 10
    
//    let sumWallpaper = wallpaperSquareDouble * wallpaperPrice
//    let sumPainting = paintingSquareDouble * paintingPrice
//    let sumSimpleDecor = simpleDecorSquareDouble * simpleDecorPrice
//    let sumComplexDecor = complexDecorSquareDouble * complexDecorPrice
//    let sumTile = tileSquareDouble * tilePrice
//    let sumPicture = pictureSquareDouble * picturePrice
//    let sumOtherWall = otherWallSquareDouble * otherWallPrice
//    let sumPreparationOfTheWall = allWallSquareDouble * PreparationOfTheWallPrice
//
//    let allSumWall = sumPreparationOfTheWall + sumWallpaper + sumPainting + sumSimpleDecor + sumComplexDecor + sumTile + sumPicture + sumOtherWall
//

    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
