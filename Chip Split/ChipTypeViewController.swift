//
//  ChipTypeViewController.swift
//  Chip Split
//
//  Created by Justin Gluska on 8/17/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class ChipTypeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateType()
    }
    
    func updateType(){
        if(chipNum < 7){
            chipTypeNumberLabel.text = "Chip Type: \(chipNum) of \(totalTypes)"
        }
        if(chipNum == 8){
            print("Done")
        }
    }
    
    @IBAction func chipWorthChanged(_ sender: UISlider) {
        var currentWorth:Int = Int(sender.value)
        chipWorthLabel.text = "Value: $\(currentWorth)"
        if(chipNum == 1){
            chipAmount1 = currentWorth
        }
        if(chipNum == 2){
            chipAmount2 = currentWorth
        }
        if(chipNum == 3){
            chipAmount3 = currentWorth
        }
        if(chipNum == 4){
            chipAmount4 = currentWorth
        }
        if(chipNum == 5){
            chipAmount5 = currentWorth
        }
        if(chipNum == 6){
            chipAmount6 = currentWorth
        }
        if(chipNum == 7){
            chipAmount7 = currentWorth
        }
        if(chipNum == 8){
            chipAmount8 = currentWorth
        }
    }
    
    @IBAction func chipAmountChanged(_ sender: UISlider) {
        var currentAmount:Int = Int(sender.value)
        chipAmountLabel.text = "Quantity: \(currentAmount) Total Chips"
        if(chipNum == 1){
            chipQuantity1 = currentAmount
        }
        if(chipNum == 2){
            chipQuantity2 = currentAmount
        }
        if(chipNum == 3){
            chipQuantity3 = currentAmount
        }
        if(chipNum == 4){
            chipQuantity4 = currentAmount
        }
        if(chipNum == 5){
            chipQuantity5 = currentAmount
        }
        if(chipNum == 6){
            chipQuantity6 = currentAmount
        }
        if(chipNum == 7){
            chipQuantity7 = currentAmount
        }
        if(chipNum == 8){
            chipQuantity8 = currentAmount
        }
    }
    
    @IBAction func confirmNext(_ sender: Any) {
        chipNum += 1
        updateType()
    }
    
    var chipNum:Int = 1
    
    @IBOutlet weak var chipWorthLabel: UILabel!
    @IBOutlet weak var chipTypeNumberLabel: UILabel!
    @IBOutlet weak var chipAmountLabel: UILabel!
    
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
    
    
    
}
