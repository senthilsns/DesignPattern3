//
//  BuilderPattern.swift
//  DesignPattern3
//
//  Created by SENTHILKUMAR on 24/11/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

struct Theme {
    let textColor:UIColor
    let backgroundColor:UIColor
}

class ThemeBuilder {
    
    enum style {
        case light
        case dark
    }
    
    func build (style:style) -> Theme {
        
        switch style {
        case .light:
            return Theme(textColor: .black, backgroundColor: .white)
        case .dark:
            return Theme(textColor: .white, backgroundColor: .black)
        }
    }
    
}
