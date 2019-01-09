//
//  ColoresSliderViewController.swift
//  UserDefaults
//
//  Created by Tecnova on 1/7/19.
//  Copyright © 2019 Gabriel Soto Valenzuela. All rights reserved.
//

import UIKit

class ColoresSliderViewController: UIViewController {

    //Variables
    var red : Float = 0
    var green : Float = 0
    var blue : Float = 0
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        Colores(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func redAction(_ sender: UISlider)
    {
        red = sender.value
        Colores(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
        UserDefaults.standard.set(red, forKey: "red")
    }
    @IBAction func greenAction(_ sender: UISlider)
    {
        green = sender.value
        Colores(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
        UserDefaults.standard.set(red, forKey: "red")
    }
    
    @IBAction func blueAction(_ sender: UISlider)
    {
        blue = sender.value
        Colores(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
        UserDefaults.standard.set(red, forKey: "red")
    }
    
    func Colores(red: CGFloat, green: CGFloat, blue: CGFloat)
    {
        view.backgroundColor =  UIColor(displayP3Red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
    }
    
    func Valores()
    {
        if let r = UserDefaults.standard.object(forKey: "red") as? CGFloat, let g = UserDefaults.standard.object(forKey: "green") as? CGFloat,
            let b = UserDefaults.standard.object(forKey: "blue") as? CGFloat
        {
            Colores(red: r, green: g, blue: b)
            //dejar los slider
            redSlider.value = Float(r)
            greenSlider.value = Float(g)
            blueSlider.value = Float(b)
        }
        
        
    }
    
}
