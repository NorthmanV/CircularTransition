//
//  FirstVC.swift
//  CircularTransition
//
//  Created by Руслан Акберов on 16.06.2018.
//  Copyright © 2018 Ruslan Akberov. All rights reserved.
//

import UIKit

class FirstVC: UIViewController, UIViewControllerTransitioningDelegate {

    @IBOutlet weak var warcraftButton: UIButton!
    let transition = CircularTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        warcraftButton.layer.cornerRadius = warcraftButton.bounds.width / 2
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = warcraftButton.center
        transition.circleColor = warcraftButton.backgroundColor!
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = warcraftButton.center
        transition.circleColor = warcraftButton.backgroundColor!
        return transition
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondVC
        secondVC.transitioningDelegate = self
        secondVC.modalPresentationStyle = .custom
    }

}












