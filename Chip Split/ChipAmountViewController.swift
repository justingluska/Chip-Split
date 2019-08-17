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
        
        super.viewDidLoad()
    }
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var chipTypesLabel: UILabel!
    
    var chipTypes: Int = 1
    
    struct defaultsKeys {
        static let chipTypesGlobal:Int = 1
    }
    
    
    
    
    @IBAction func chipTypesStepper(_ sender: UIStepper) {
        chipTypes = Int(sender.value)
        chipTypesLabel.text = "\(chipTypes)"
        defaults.set(chipTypes, forKey: "Test")
        defaults.set(passwordTextField.text, forKey: "Password")
    }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
