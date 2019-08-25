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
        super.viewDidLoad()
    }
    
    var totalTypes:Int = 1
    
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
    
    @IBOutlet weak var totalPlayers: UILabel!
    @IBOutlet weak var results: UITextView!
    
    @IBAction func generateButton(_ sender: Any) {
        if(totalTypes == 1){
            var totalValue:Int = 1
            totalValue = chipQuantity1 * chipAmount1
            results.text = "\(chipQuantity1/tPl) \(chipName1.uppercased()) CHIPS EACH\n\nTOTAL VALUE: \(totalValue)"
        }
        if(totalTypes == 2){
            var totalValue:Int = 1
            totalValue = chipQuantity1 * chipAmount1
            totalValue = (totalValue) + chipQuantity2 * chipAmount2
            totalValue = totalValue / tPl
            results.text = "\(chipQuantity1/tPl) \(chipName1.uppercased()) CHIPS EACH\n\(chipQuantity2/tPl) \(chipName2.uppercased()) CHIPS EACH \n\nTOTAL VALUE: $\(totalValue)"
        }
        if(totalTypes == 3){
            var totalValue:Int = 1
            totalValue = chipQuantity1 * chipAmount1
            totalValue = (totalValue) + chipQuantity2 * chipAmount2
            totalValue = (totalValue) + chipQuantity3 * chipAmount3
            totalValue = totalValue / tPl
            results.text = "\(chipQuantity1/tPl) \(chipName1.uppercased()) CHIPS EACH\n\(chipQuantity2/tPl) \(chipName2.uppercased()) CHIPS EACH\n\(chipQuantity3/tPl) \(chipName3.uppercased()) CHIPS EACH \n\nTOTAL VALUE: $\(totalValue)"
        }
        if(totalTypes == 4){
            var totalValue:Int = 1
            totalValue = chipQuantity1 * chipAmount1
            totalValue = (totalValue) + chipQuantity2 * chipAmount2
            totalValue = (totalValue) + chipQuantity3 * chipAmount3
            totalValue = (totalValue) + chipQuantity4 * chipAmount4
            totalValue = totalValue / tPl
            results.text = "\(chipQuantity1/tPl) \(chipName1.uppercased()) CHIPS EACH\n\(chipQuantity2/tPl) \(chipName2.uppercased()) CHIPS EACH\n\(chipQuantity3/tPl) \(chipName3.uppercased()) CHIPS EACH\n\(chipQuantity4/tPl) \(chipName4.uppercased()) CHIPS EACH \n\nTOTAL VALUE: $\(totalValue)"
        }
        
        
    }

}
