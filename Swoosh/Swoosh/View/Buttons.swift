//
//  Buttons.swift
//  Swoosh
//
//  Created by Ahmet Ayyildiz on 30/08/2017.
//  Copyright © 2017 ayyildizSoftware. All rights reserved.
//

import UIKit

@IBDesignable
class Buttons: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeButton()
    }
    
    override func prepareForInterfaceBuilder() {
        customizeButton()
    }
    
    func customizeButton(){
        backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)
        setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
    }

}
