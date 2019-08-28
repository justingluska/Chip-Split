//
//  StartViewController.swift
//  Chip Split
//
//  Created by Justin Gluska on 8/17/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 15
        helpButton.layer.cornerRadius = 15
    }
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    
}
