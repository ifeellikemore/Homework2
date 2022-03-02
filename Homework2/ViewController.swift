//
//  ViewController.swift
//  Homework2
//
//  Created by Olechka on 02.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLight.alpha = 0.3
        redLight.layer.cornerRadius = 100
        yellowLight.alpha = 0.3
        yellowLight.layer.cornerRadius = 100
        greenLight.alpha = 0.3
        greenLight.layer.cornerRadius = 100
        startBtn.layer.cornerRadius = 20
    }

    @IBAction func startBtnPressed() {
        if redLight.alpha < 1 && yellowLight.alpha < 1 && greenLight.alpha < 1 {
            redLight.alpha = 1
            print("pressed")
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        }
        startBtn.setTitle("NEXT", for: .normal)
    }
    
}

