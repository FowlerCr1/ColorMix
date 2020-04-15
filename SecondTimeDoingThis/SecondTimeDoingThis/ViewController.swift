//
//  ViewController.swift
//  SecondTimeDoingThis
//
//  Created by Fowler, Creighton on 4/14/20.
//  Copyright © 2020 Fowler, Creighton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var red: CGFloat = 0
    var green: CGFloat = 0
    var blue: CGFloat = 0
    
    func updateColor() {
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        var color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
    }
    
    
    @IBAction func reset(_ sender: Any) {
redSlider.value = 1
    greenSlider.value = 1
        blueSlider.value = 1
    }
    
    @IBOutlet weak var colorView: UIView!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateControls()
        
        if sender.isOn {
            updateColor()
        } else {
            colorView.backgroundColor = .black
        }
    }
    
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func sliderChanged(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.borderWidth = 5
        colorView.layer.borderColor = UIColor.black.cgColor
        
        updateColor()

    }


}

