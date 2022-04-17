//
//  ViewController.swift
//  SecondColorMixApp
//
//  Created by Сергей Косичкин on 15.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        
        redSliderAction()
        greenSliderAction()
        blueSliderAction()
    }

    @IBAction func redSliderAction() {
        redValueLabel.text = roundToString(redSlider)
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = roundToString(greenSlider)
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = roundToString(blueSlider)
        changeColor()
    }
    
    private func roundToString(_ slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    private func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
}

