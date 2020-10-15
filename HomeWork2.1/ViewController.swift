//
//  ViewController.swift
//  HomeWork2.1
//
//  Created by Igor Ermolaev on 10/13/20.
//

import UIKit

class  ViewController: UIViewController {
    
    @IBOutlet var changeLightsButton: UIButton!
    
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var redLight: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeLightsButton.layer.cornerRadius = 10
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        redLight.layer.cornerRadius = redLight.frame.width / 2
        redLight.alpha = 0.5
        yellowLight.alpha = 0.5
        greenLight.alpha = 0.5
    }
    
    var count = 0
    @IBAction func changeLightsButtonPressed() {
        changeLightsButton.setTitle("NEXT", for: .normal)
        changeLights()
        count += 1
        if count == 4 { count = 1 }
        changeLights()
    }
    func changeLights() {
        let vegetable = count
        switch vegetable {
        case 1:
            redLight.alpha = 1
            yellowLight.alpha = 0.5
            greenLight.alpha = 0.5
        case 2:
            redLight.alpha = 0.5
            yellowLight.alpha = 1
            greenLight.alpha = 0.5
        case 3:
            redLight.alpha = 0.5
            yellowLight.alpha = 0.5
            greenLight.alpha = 1
        default:
            return
        }
        
    }
}


