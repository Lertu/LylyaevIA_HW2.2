//
//  ViewController.swift
//  LylyaevIA_HW2.2
//
//  Created by Игорь И on 31.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        colorView.backgroundColor = UIColor(
            red: 0.5,
            green: 0.5,
            blue: 0.5,
            alpha: 1)
    }
    
    func mixColors() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        let color = UIColor (red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }

    @IBAction func redSliderAction() {
        let value = String(format: "%0.2f",redSlider.value)
        redSliderValue.text = value
        mixColors()
    }
    @IBAction func greenSliderAction() {
        let value = String(format: "%0.2f",greenSlider.value)
        greenSliderValue.text = value
        mixColors()
    }
    @IBAction func blueSliderAction() {
        let value = String(format: "%0.2f",blueSlider.value)
        blueSliderValue.text = value
        mixColors()
    }
    
    
    

}

