//
//  ViewController.swift
//  TrafficLights
//
//  Created by Георгий Кузнецов on 09.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var    redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var  greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
           redLight.alpha = 0.6
        yellowLight.alpha = 0.6
         greenLight.alpha = 0.6
        
           redLight.layer.cornerRadius = 64
        yellowLight.layer.cornerRadius = 64
         greenLight.layer.cornerRadius = 64
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func changeColorButton(_ sender: Any) {
           if redLight.alpha == yellowLight.alpha  &&
            greenLight.alpha == yellowLight.alpha
        {
            redLight.alpha = 1
               startButton.setTitle("NEXT", for: .normal)
        } else if redLight.alpha == 1 {
               redLight.alpha = 0.6
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.6
             greenLight.alpha = 1
            startButton.setTitle("TURN OFF", for: .normal)
        } else if greenLight.alpha == 1 {
             greenLight.alpha = 0.6
             startButton.setTitle("START", for: .normal)
        }
    }

    

}

