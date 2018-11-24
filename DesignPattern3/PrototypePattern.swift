//
//  PrototypePattern.swift
//  DesignPattern3
//
//  Created by SENTHILKUMAR on 24/11/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class Paragraph {
    
    var font : UIFont
    var color : UIColor
    var text : String
    
    
    init(font:UIFont = UIFont.systemFont(ofSize: 12),color:UIColor = .darkText,text:String = "") {
        self.font = font
        self.color = color
        self.text = text
    }
    
    func clone() -> Paragraph {
        
        return Paragraph(font: self.font, color: self.color, text: self.text)
    
    }
    
}
