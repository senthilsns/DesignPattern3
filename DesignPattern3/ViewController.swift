//
//  ViewController.swift
//  DesignPattern3
//
//  Created by SENTHILKUMAR on 22/11/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // Decorator Pattern
        decoratorPattern()
    
    }

    //MARK: Decorator Pattern
    func decoratorPattern() {
        
        let sedan = Sedan()
        let  autonomousSedan  = AutonomousCar(car:sedan)
        autonomousSedan.drive()
        
        
    }

}

