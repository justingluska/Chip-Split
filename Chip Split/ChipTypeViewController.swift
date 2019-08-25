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
        confirmChip.isHidden = false
        continueAd.isHidden = true
        if(chipNum == totalTypes){
            confirmChip.isHidden = true
            continueAd.isHidden = false
        }
    }
    
    @IBOutlet weak var confirmChip: UIButton!
    @IBOutlet weak var continueAd: UIButton!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var valueSlid: UISlider!
    @IBOutlet weak var quantitySlid: UISlider!
    
    func resetTypes(){
        nameInput.text = ""
        valueSlid.value = 1
        quantitySlid.value = 1
        chipWorthLabel.text = "Value: $1"
        chipAmountLabel.text = "Quantity: 2 Total Chips"
    }
    
    func updateType(){
        if(chipNum < 9){
            chipTypeNumberLabel.text = "Chip Type: \(chipNum) of \(totalTypes)"
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
        if(nameInput.text == ""){
            let alert = UIAlertController(title: "Error", message: "Please enter a chip color or name", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else{
            if(chipNum == 1){
                chipName1 = "\(nameInput.text ?? "chip1")"
                print(chipName1)
            }
            if(chipNum == 2){
                chipName2 = "\(nameInput.text ?? "chip2")"
                print(chipName2)
            }
            if(chipNum == 3){
                chipName3 = "\(nameInput.text ?? "chip3")"
            }
            if(chipNum == 4){
                chipName4 = "\(nameInput.text ?? "chip4")"
            }
            if(chipNum == 5){
                chipName5 = "\(nameInput.text ?? "chip5")"
            }
            if(chipNum == 6){
                chipName6 = "\(nameInput.text ?? "chip6")"
            }
            if(chipNum == 7){
                chipName7 = "\(nameInput.text ?? "chip7")"
            }
            if(chipNum == 8){
                chipName8 = "\(nameInput.text ?? "chip8")"
            }
            if(chipNum < totalTypes){
                updateType()
                resetTypes()
                chipNum += 1
            }
            else{
                if(chipNum == totalTypes){
                    confirmChip.isHidden = true
                    continueAd.isHidden = false
                }
            }
        }
    }
    
    var chipNum:Int = 1
    
    @IBOutlet weak var chipWorthLabel: UILabel!
    @IBOutlet weak var chipTypeNumberLabel: UILabel!
    @IBOutlet weak var chipAmountLabel: UILabel!
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ResultsViewController
        {
            let vc = segue.destination as? ResultsViewController
            vc?.totalTypes = totalTypes
            vc?.chipName1 = chipName1
            vc?.chipAmount1 = chipAmount1
            vc?.chipQuantity1 = chipQuantity1
            
            vc?.chipName2 = chipName2
            vc?.chipAmount2 = chipAmount2
            vc?.chipQuantity2 = chipQuantity2
            
            vc?.chipName3 = chipName3
            vc?.chipAmount3 = chipAmount3
            vc?.chipQuantity3 = chipQuantity3
            
            vc?.chipName4 = chipName4
            vc?.chipAmount4 = chipAmount4
            vc?.chipQuantity4 = chipQuantity4
            
            vc?.chipName5 = chipName5
            vc?.chipAmount5 = chipAmount5
            vc?.chipQuantity5 = chipQuantity5
            
            vc?.chipName6 = chipName6
            vc?.chipAmount6 = chipAmount6
            vc?.chipQuantity6 = chipQuantity6
            
            vc?.chipName7 = chipName7
            vc?.chipAmount7 = chipAmount7
            vc?.chipQuantity7 = chipQuantity7
            
            vc?.chipName8 = chipName8
            vc?.chipAmount8 = chipAmount8
            vc?.chipQuantity8 = chipQuantity8
        }
    }
    
}
