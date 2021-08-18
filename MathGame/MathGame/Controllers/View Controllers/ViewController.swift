//
//  ViewController.swift
//  MathGame
//
//  Created by Bryan Gomez on 8/18/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func equationGerenator() {
        
        let numberOne = Int.random(in: 0...100)
        let numberTwo = Int.random(in: 0...100)
        
        firstNumberLabel.text = String(numberOne)
        secondNumberLabel.text = String(numberTwo)
    }
    
    // IBAction

}

