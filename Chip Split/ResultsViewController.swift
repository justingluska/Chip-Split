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
    
    var totalTypes:Int = 0
    
    var chipName1:String = ""
    var chipAmount1:Int = 0
    var chipQuantity1:Int = 0
    
    var chipName2:String = ""
    var chipAmount2:Int = 0
    var chipQuantity2:Int = 0
    
    var chipName3:String = ""
    var chipAmount3:Int = 0
    var chipQuantity3:Int = 0
    
    var chipName4:String = ""
    var chipAmount4:Int = 0
    var chipQuantity4:Int = 0
    
    var chipName5:String = ""
    var chipAmount5:Int = 0
    var chipQuantity5:Int = 0
    
    var chipName6:String = ""
    var chipAmount6:Int = 0
    var chipQuantity6:Int = 0
    
    var chipName7:String = ""
    var chipAmount7:Int = 0
    var chipQuantity7:Int = 0
    
    var chipName8:String = ""
    var chipAmount8:Int = 0
    var chipQuantity8:Int = 0
    
    @IBOutlet weak var stepper: UIStepper!
    
    var tPl: Int = 2
    
    @IBAction func stepperClicked(_ sender: Any) {
        tPl = Int(stepper.value)
        totalPlayers.text = "Total Players: \(tPl)"
    }
    
    @IBOutlet weak var totalPlayers: UILabel!
    @IBOutlet weak var results: UITextView!
    
    @IBAction func generateButton(_ sender: Any) {
        if(totalTypes == 2){
            results.text = "\(chipQuantity1/tPl) \(chipName1.uppercased()) CHIPS EACH\n\(chipQuantity2/tPl) \(chipName2) CHIPS EACH"
        }
    }

}
