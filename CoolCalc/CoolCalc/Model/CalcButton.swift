//
//  CalcButton.swift
//  CoolCalc
//
//  Created by Joseth D. Chavis on 1/20/21.
//

import UIKit

class CalcButton: UIButton {

 
    override  func awakeFromNib() {
        super.awakeFromNib()
        
        
        layer.cornerRadius = 5
        layer.masksToBounds = false
        layer.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
    }

}
