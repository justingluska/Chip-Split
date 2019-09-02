//
//  ResultsViewController.swift
//  Chip Split
//
//  Created by Justin Gluska on 8/17/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        genBo.layer.cornerRadius = 15
        backBo.layer.cornerRadius = 15
        textOutputView.layer.cornerRadius = 15
        textOutputView.clipsToBounds = true
        super.viewDidLoad()
    }
    
    @IBOutlet weak var genBo: UIButton!
    @IBOutlet weak var backBo: UIButton!
    
    var totalTypes:Int = 2
    
    var chipName1:String = ""
    var chipAmount1:Int = 1
    var chipQuantity1:Int = 2
    
    var chipName2:String = ""
    var chipAmount2:Int = 1
    var chipQuantity2:Int = 2
    
    var chipName3:String = ""
    var chipAmount3:Int = 1
    var chipQuantity3:Int = 2
    
    var chipName4:String = ""
    var chipAmount4:Int = 1
    var chipQuantity4:Int = 2
    
    var chipName5:String = ""
    var chipAmount5:Int = 1
    var chipQuantity5:Int = 2
    
    var chipName6:String = ""
    var chipAmount6:Int = 1
    var chipQuantity6:Int = 2
    
    var chipName7:String = ""
    var chipAmount7:Int = 1
    var chipQuantity7:Int = 2
    
    var chipName8:String = ""
    var chipAmount8:Int = 1
    var chipQuantity8:Int = 2
    
    @IBOutlet weak var stepper: UIStepper!
    
    var tPl: Int = 2
    
    @IBAction func stepperClicked(_ sender: Any) {
        tPl = Int(stepper.value)
        totalPlayers.text = "Total Players: \(tPl)"
    }
    
    @IBOutlet weak var textOutputView: UITextView!
    @IBOutlet weak var totalPlayers: UILabel!
    @IBOutlet weak var results: UITextView!
    
    @IBAction func generateButton(_ sender: Any) {
        if(totalTypes == 2){
            var totalValue1:String = ""
            totalValue1 = "CHIPS @ $\(chipAmount1) EACH"
            var totalValue2:String = ""
            totalValue2 = "CHIPS @ $\(chipAmount2) EACH"
            results.text = "\(chipQuantity1/tPl) \(chipName1.uppercased()) \(totalValue1)\n\(chipQuantity2/tPl) \(chipName2.uppercased()) \(totalValue2)"
        }
        if(totalTypes == 3){
            var totalValue1:String = ""
            totalValue1 = "CHIPS @ $\(chipAmount1) EACH"
            var totalValue2:String = ""
            totalValue2 = "CHIPS @ $\(chipAmount2) EACH"
            var totalValue3:String = ""
            totalValue3 = "CHIPS @ $\(chipAmount3) EACH"
            results.text = "\(chipQuantity1/tPl) \(chipName1.uppercased()) \(totalValue1)\n\(chipQuantity2/tPl) \(chipName2.uppercased()) \(totalValue2)\n\(chipQuantity3/tPl) \(chipName3.uppercased()) \(totalValue3)"
        }
        if(totalTypes == 4){
            var totalValue1:String = ""
            totalValue1 = "CHIPS @ $\(chipAmount1) EACH"
            var totalValue2:String = ""
            totalValue2 = "CHIPS @ $\(chipAmount2) EACH"
            var totalValue3:String = ""
            totalValue3 = "CHIPS @ $\(chipAmount3) EACH"
            var totalValue4:String = ""
            totalValue4 = "CHIPS @ $\(chipAmount4) EACH"
            results.text = "\(chipQuantity1/tPl) \(chipName1.uppercased()) \(totalValue1)\n\(chipQuantity2/tPl) \(chipName2.uppercased()) \(totalValue2)\n\(chipQuantity3/tPl) \(chipName3.uppercased()) \(totalValue3)\n\(chipQuantity4/tPl) \(chipName4.uppercased()) \(totalValue4)"
        }
        if(totalTypes == 5){
            var totalValue1:String = ""
            totalValue1 = "CHIPS @ $\(chipAmount1) EACH"
            var totalValue2:String = ""
            totalValue2 = "CHIPS @ $\(chipAmount2) EACH"
            var totalValue3:String = ""
            totalValue3 = "CHIPS @ $\(chipAmount3) EACH"
            var totalValue4:String = ""
            totalValue4 = "CHIPS @ $\(chipAmount4) EACH"
            var totalValue5:String = ""
            totalValue5 = "CHIPS @ $\(chipAmount5) EACH"
            results.text = "\(chipQuantity1/tPl) \(chipName1.uppercased()) \(totalValue1)\n\(chipQuantity2/tPl) \(chipName2.uppercased()) \(totalValue2)\n\(chipQuantity3/tPl) \(chipName3.uppercased()) \(totalValue3)\n\(chipQuantity4/tPl) \(chipName4.uppercased()) \(totalValue4)\n\(chipQuantity5/tPl) \(chipName5.uppercased()) \(totalValue5)"
        }
        if(totalTypes == 6){
            var totalValue1:String = ""
            totalValue1 = "CHIPS @ $\(chipAmount1) EACH"
            var totalValue2:String = ""
            totalValue2 = "CHIPS @ $\(chipAmount2) EACH"
            var totalValue3:String = ""
            totalValue3 = "CHIPS @ $\(chipAmount3) EACH"
            var totalValue4:String = ""
            totalValue4 = "CHIPS @ $\(chipAmount4) EACH"
            var totalValue5:String = ""
            totalValue5 = "CHIPS @ $\(chipAmount5) EACH"
            var totalValue6:String = ""
            totalValue6 = "CHIPS @ $\(chipAmount6) EACH"
            results.text = "\(chipQuantity1/tPl) \(chipName1.uppercased()) \(totalValue1)\n\(chipQuantity2/tPl) \(chipName2.uppercased()) \(totalValue2)\n\(chipQuantity3/tPl) \(chipName3.uppercased()) \(totalValue3)\n\(chipQuantity4/tPl) \(chipName4.uppercased()) \(totalValue4)\n\(chipQuantity5/tPl) \(chipName5.uppercased()) \(totalValue5)\n\(chipQuantity6/tPl) \(chipName6.uppercased()) \(totalValue6)"
        }
        if(totalTypes == 7){
            var totalValue1:String = ""
            totalValue1 = "CHIPS @ $\(chipAmount1) EACH"
            var totalValue2:String = ""
            totalValue2 = "CHIPS @ $\(chipAmount2) EACH"
            var totalValue3:String = ""
            totalValue3 = "CHIPS @ $\(chipAmount3) EACH"
            var totalValue4:String = ""
            totalValue4 = "CHIPS @ $\(chipAmount4) EACH"
            var totalValue5:String = ""
            totalValue5 = "CHIPS @ $\(chipAmount5) EACH"
            var totalValue6:String = ""
            totalValue6 = "CHIPS @ $\(chipAmount6) EACH"
            var totalValue7:String = ""
            totalValue7 = "CHIPS @ $\(chipAmount7) EACH"
            results.text = "\(chipQuantity1/tPl) \(chipName1.uppercased()) \(totalValue1)\n\(chipQuantity2/tPl) \(chipName2.uppercased()) \(totalValue2)\n\(chipQuantity3/tPl) \(chipName3.uppercased()) \(totalValue3)\n\(chipQuantity4/tPl) \(chipName4.uppercased()) \(totalValue4)\n\(chipQuantity5/tPl) \(chipName5.uppercased()) \(totalValue5)\n\(chipQuantity6/tPl) \(chipName6.uppercased()) \(totalValue6)\n\(chipQuantity7/tPl) \(chipName7.uppercased()) \(totalValue7)"
        }
        if(totalTypes == 8){
            var totalValue1:String = ""
            totalValue1 = "CHIPS @ $\(chipAmount1) EACH"
            var totalValue2:String = ""
            totalValue2 = "CHIPS @ $\(chipAmount2) EACH"
            var totalValue3:String = ""
            totalValue3 = "CHIPS @ $\(chipAmount3) EACH"
            var totalValue4:String = ""
            totalValue4 = "CHIPS @ $\(chipAmount4) EACH"
            var totalValue5:String = ""
            totalValue5 = "CHIPS @ $\(chipAmount5) EACH"
            var totalValue6:String = ""
            totalValue6 = "CHIPS @ $\(chipAmount6) EACH"
            var totalValue7:String = ""
            totalValue7 = "CHIPS @ $\(chipAmount7) EACH"
            var totalValue8:String = ""
            totalValue8 = "CHIPS @ $\(chipAmount8) EACH"
            results.text = "\(chipQuantity1/tPl) \(chipName1.uppercased()) \(totalValue1)\n\(chipQuantity2/tPl) \(chipName2.uppercased()) \(totalValue2)\n\(chipQuantity3/tPl) \(chipName3.uppercased()) \(totalValue3)\n\(chipQuantity4/tPl) \(chipName4.uppercased()) \(totalValue4)\n\(chipQuantity5/tPl) \(chipName5.uppercased()) \(totalValue5)\n\(chipQuantity6/tPl) \(chipName6.uppercased()) \(totalValue6)\n\(chipQuantity7/tPl) \(chipName7.uppercased()) \(totalValue7)\n\(chipQuantity8/tPl) \(chipName8.uppercased()) \(totalValue8)"
        }
    }
}
