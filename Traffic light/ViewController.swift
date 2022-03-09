//
//  ViewController.swift
//  Traffic light
//
//  Created by Tatiana Sosina on 09.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum ColorTrafficLight {
        case red
        case yellow
        case green
    }
    
    // MARK: - Private property
    
    @IBOutlet weak private var trafficLightView: UIView!
    @IBOutlet weak private var redTrafficLight: UIView!
    @IBOutlet weak private var yellowTrafficLight: UIView!
    @IBOutlet weak private var greenTrafficLight: UIView!
    @IBOutlet weak private var buttonTrafficLight: UIButton!
    private var switchColorTrafficLight: ColorTrafficLight = .red
    
    // MARK: - Internal func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultSettingsTrafficLight()
    }
    
    // MARK: - Private func

    @IBAction private func buttonSwitchColorTrafficLight() {
        switchColorTrafficLightButton()
    }
    
    private func defaultSettingsTrafficLight() {
        trafficLightView.layer.cornerRadius = 22
        
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.height / 2
        redTrafficLight.backgroundColor = .red.withAlphaComponent(0.3)
        
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.height / 2
        yellowTrafficLight.backgroundColor = .yellow.withAlphaComponent(0.3)
        
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.height / 2
        greenTrafficLight.backgroundColor = .green.withAlphaComponent(0.3)
        
        buttonTrafficLight.layer.cornerRadius = 13
        buttonTrafficLight.setTitle("Start", for: .normal)
    }
    
    private func switchColorTrafficLightButton() {
        buttonTrafficLight.setTitle("Next", for: .normal)
        
        switch switchColorTrafficLight {
        case .red:
            redTrafficLight.backgroundColor = .red
            greenTrafficLight.backgroundColor = .green.withAlphaComponent(0.3)
            switchColorTrafficLight = .yellow
        case .yellow:
            yellowTrafficLight.backgroundColor = .yellow
            redTrafficLight.backgroundColor = .red.withAlphaComponent(0.3)
            switchColorTrafficLight = .green
        case .green:
            greenTrafficLight.backgroundColor = .green
            yellowTrafficLight.backgroundColor = .yellow.withAlphaComponent(0.3)
            switchColorTrafficLight = .red
        }
    }
}

