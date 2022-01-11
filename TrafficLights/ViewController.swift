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

        startButton.layer.cornerRadius = 10
        startButton.setTitle("START", for: .normal)
        turnOffLights()
           }

    
    @IBAction func changeColorButton(_ sender: Any) {
           redLight.alpha == 1 ? turnOnLight(color: "Yellow", buttonTitle: "NEXT")     :
        yellowLight.alpha == 1 ? turnOnLight(color: "Green",  buttonTitle: "TURN OFF") :
         greenLight.alpha == 1 ? turnOnLight(color: "",       buttonTitle: "START")    :
            turnOnLight(color: "Red", buttonTitle: "NEXT")
    }
    
    func turnOffLights() {
        redLight.alpha = 0.6
     yellowLight.alpha = 0.6
      greenLight.alpha = 0.6
       
        redLight.layer.cornerRadius =    redLight.frame.height / 2
     yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
      greenLight.layer.cornerRadius =  greenLight.frame.height / 2
        /*
         вообще эти строки я должен был добавить во viewDidLoad,
         но почему-то они плохо влияют на светильники и сперва они не круглые на экранах
         iPod Touch 7 / iPhone SE
         с iPhone 11 Pro Max изначально все в порядке
         
         Предполагаю, что при загрузке приложения значение  .frame.height берется от значения вьюшки без форматирования под экран девайса.
         На этом мои полномочия все
         */
    }
    
    func turnOnLight (color: String, buttonTitle: String) {
        turnOffLights()
        startButton.setTitle(buttonTitle, for: .normal)
        switch color {
        case "Red":       redLight.alpha = 1
        case "Yellow": yellowLight.alpha = 1
        case "Green":   greenLight.alpha = 1
        default:
            turnOffLights()
        }
    }
}


