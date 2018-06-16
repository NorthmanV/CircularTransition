//
//  SecondVC.swift
//  CircularTransition
//
//  Created by Руслан Акберов on 16.06.2018.
//  Copyright © 2018 Ruslan Akberov. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var dismissButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        dismissButton.layer.cornerRadius = dismissButton.bounds.width / 2
    }
    
    @IBAction func dismissButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
}









