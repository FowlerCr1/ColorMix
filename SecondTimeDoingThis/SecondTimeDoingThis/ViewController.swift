//
//  ViewController.swift
//  SecondTimeDoingThis
//
//  Created by Fowler, Creighton on 4/14/20.
//  Copyright © 2020 Fowler, Creighton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = 1
        }
        if greenSwitch.isOn {
            green = 1
        }
        if blueSwitch.isOn {
            blue = 1
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    
    
    @IBOutlet weak var colorView: UIView!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        if sender.isOn {
            colorView.backgroundColor = .red
        } else {
            colorView.backgroundColor = .black
        }
    }
    
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateColor()

    }


}

