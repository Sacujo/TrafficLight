//
//  ViewController.swift
//  TrafficLight
//
//  Created by Igor Guryan on 08.09.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    enum CurrentTrafficLight {
        case red, yellow, green
    }

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var changeLightButton: UIButton!
    
    let lightOff = 0.3
    let lightOn = 1.0
    
    var currentTrafficLigh = CurrentTrafficLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 75
        yellowLightView.layer.cornerRadius = 75
        greenLightView.layer.cornerRadius = 75
    }
    @IBAction func changeLightButtonTapped(_ sender: UIButton) {
        changeLightButton.setTitle("NEXT", for: .normal)
        
        switch currentTrafficLigh {
        case .red:
            redLightView.alpha = lightOn
            greenLightView.alpha = lightOff
            currentTrafficLigh = .yellow
        case .yellow:
            yellowLightView.alpha = lightOn
            redLightView.alpha = lightOff
            currentTrafficLigh = .green
        case .green:
            greenLightView.alpha = lightOn
            yellowLightView.alpha = lightOff
            currentTrafficLigh = .red
        }
    }
    

}

