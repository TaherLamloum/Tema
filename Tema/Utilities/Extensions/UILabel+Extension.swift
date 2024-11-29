//
//  UILabel+Extension.swift
//  Tema
//
//  Created by taher elnehr on 11/08/2024.
//

import UIKit

extension UILabel {
        
    func customLabel(color: Colors, size: Size, font: Fonts, text: String = "", nOlines: Int = 1, direction: Direction = .NORMAL) {
        let size = iPhoneXFactor*(CGFloat(size.rawValue))
        switch direction {
        case .LEFT: self.textAlignment = ((isEnglish()) ? .left : .left)
        case .RIGHT: self.textAlignment = ((isEnglish()) ? .right : .right)
        case .NORMAL: self.textAlignment = ((isEnglish()) ? .left : .right)
        case .CENTER: self.textAlignment = .center
            
        }
        self.font = UIFont(name: font.rawValue.localized, size: size)
        self.textColor = UIColor(hexString: color.rawValue)
        
        self.text = text
    }
}
