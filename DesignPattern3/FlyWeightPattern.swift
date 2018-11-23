//
//  FlyWeightPattern.swift
//  DesignPattern3
//
//  Created by SENTHILKUMAR on 23/11/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

protocol Bike {
    
    var color : UIColor { get }
    func ride()
    
}

class Cruser : Bike {
    
    var color: UIColor
    
    init(color:UIColor) {
        self.color = color
    }
    
    func ride() {
        print("Ride a Hardly Davidson Motercycle")
    }
}


class Person {
    
    var bikes :[UIColor:Bike] = [UIColor:Bike]()
    
    func getBike(color:UIColor) -> Bike
    {
        if let bike = bikes[color] {
            return bike
        } else {
            
            let bike = Cruser(color: .red)
            bikes[color] = bike
            return bike
        }
        
    }
    
}
