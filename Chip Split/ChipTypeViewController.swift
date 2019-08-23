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
        chipTypeNumberLabel.text = "Chip Type: 1 of \(totalTypes)"
    }

    @IBOutlet weak var chipTypeNumberLabel: UILabel!
    var totalTypes:Int = 0
    
    var chipType1:Int = 0
    var chipAmount1:Int = 0
    var chipName1:String = ""
    
    var chipType2:Int = 0
    var chipAmount2:Int = 0
    var chipName2:String = ""
    
    var chipType3:Int = 0
    var chipAmount3:Int = 0
    var chipName3:String = ""
    
    var chipType4:Int = 0
    var chipAmount4:Int = 0
    var chipName4:String = ""
    
    var chipType5:Int = 0
    var chipAmount5:Int = 0
    var chipName5:String = ""
    
    var chipType6:Int = 0
    var chipAmount6:Int = 0
    var chipName6:String = ""
    
    var chipType7:Int = 0
    var chipAmount7:Int = 0
    var chipName7:String = ""
    
    var chipType8:Int = 0
    var chipAmount8:Int = 0
    var chipName8:String = ""
    
    
    
}
