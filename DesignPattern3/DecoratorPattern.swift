//
//  DecoratorPattern.swift
//  DesignPattern3
//
//  Created by SENTHILKUMAR on 22/11/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

enum carType:String {
    
    case sedan = "Sedan"
    case SUV = "SUV"
}

protocol car {
    
    var type : carType {get}
    func drive()
}


class Sedan:car {
    
    var type: carType = .sedan
    
    func drive() {
        print("Drive a " + type.rawValue)
    }
}


class OverallSedan: Sedan {
    
    override func drive() {
       print("Automatically drive a " + type.rawValue)
    }
}


class Decorator: car {
    
    var car:car
    
    var type: carType {
        return car.type
    }
    
    init(car:car) {
        self.car = car
    }
    
    func drive() {
        
        car.drive()
    }
}


class AutonomousCar:Decorator {
    
    override func drive() {
        
        print("Automatically drive a " + type.rawValue + " Car")
    }
}
