//
//  FirstVC.swift
//  CircularTransition
//
//  Created by Руслан Акберов on 16.06.2018.
//  Copyright © 2018 Ruslan Akberov. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var warcraftButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        warcraftButton.layer.cornerRadius = warcraftButton.bounds.width / 2
    }



}

