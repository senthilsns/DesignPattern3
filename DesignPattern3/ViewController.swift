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
        
        // FlyWeight Pattern
        flyWeightPattern()
        
        // Builder Pattern
        builderPattern()
        
        // Prototype Pattern
        prototypePattern()
    
        // Command Pattern
        commandPattern()
    }

    //MARK: Decorator Pattern
    func decoratorPattern() {
        
        let sedan = Sedan()
        let  autonomousSedan  = AutonomousCar(car:sedan)
        autonomousSedan.drive()
        
    }
    
    //MARK: FlyWeight Pattern
    func flyWeightPattern() {
        
        let person = Person()
        let bike = person.getBike(color: .red)
        bike.ride()
        
    }
    
    //MARK: Builder Pattern
    func builderPattern() {
        
        let builder = ThemeBuilder()
        let light = builder.build(style: .light)
        let dark = builder.build(style: .dark)
        print(light)
        print(dark)
    }
    
    //MARK: Prototype Pattern
    func prototypePattern(){
        
        let base = Paragraph()
        
        // #1
        let title = base.clone()
        title.font = UIFont.systemFont(ofSize: 18)
        title.text = "This is the Title"
        print(title.text)
        
        // #2
        let first = base.clone()
        first.text = "First Paragraph"
        print(first.text)

    }
    
    
    //MARK: Command Pattern
    func commandPattern(){
        
        let invoker = Invoker()
        let concreteCommand = ConcreteCommand()
        invoker.execute(command: concreteCommand)
    }
}

