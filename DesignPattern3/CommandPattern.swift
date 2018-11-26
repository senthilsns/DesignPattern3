//
//  CommandPattern.swift
//  DesignPattern3
//
//  Created by SENTHILKUMAR on 26/11/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

protocol command {
    
    func execute()
}


class ConcreteCommand:command {
    
    func execute() {
        print("Command Pattern")
    }
    
}


class Invoker {
    
    func execute(command:command) {
        command.execute()
    }
    
}
