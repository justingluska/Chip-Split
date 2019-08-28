//
//  ChipAmountViewController.swift
//  Chip Split
//
//  Created by Justin Gluska on 8/17/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class ChipAmountViewController: UIViewController {

    override func viewDidLoad() {
        continueButton.layer.cornerRadius = 15
        super.viewDidLoad()
    }
    
    @IBOutlet weak var chipTypesLabel: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    
    var chipTypes: Int = 1
    
    @IBAction func chipTypesStepper(_ sender: UIStepper) {
        chipTypes = Int(sender.value)
        chipTypesLabel.text = "\(chipTypes)"
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toType"){
            let chips = segue.destination as! ChipTypeViewController
            chips.totalTypes = chipTypes
        }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

}
