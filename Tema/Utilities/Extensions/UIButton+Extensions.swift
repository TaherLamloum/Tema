//
//  UIButton+Extensions.swift
//  Tema
//
//  Created by taher elnehr on 11/08/2024.
//
import UIKit


extension UIButton{
    
    func addUnderlineTitle(titleColor: Colors = .C000000, font: Fonts = .Medium, size: Size = .size_18, title: BTNs){
        self.tintColor = titleColor.hex
        let size = iPhoneXFactor*(CGFloat(size.rawValue))
        let yourAttributes: [NSAttributedString.Key: Any] = [
              .font: UIFont(name: (font.rawValue.localized), size: size)!,
              .underlineStyle: NSUnderlineStyle.single.rawValue
          ] // .double.rawValue, .thick.rawValue
        let attributeString = NSMutableAttributedString(
            string: title.rawValue.localized,
                attributes: yourAttributes
             )
             self.setAttributedTitle(attributeString, for: .normal)
    }
    
    func custom(titleColor: Colors, font: Fonts = .Medium, size: Size = .size_18, title: BTNs){
        self.tintColor = titleColor.hex
        let size = iPhoneXFactor*(CGFloat(size.rawValue))
        self.titleLabel?.font = UIFont(name: (font.rawValue.localized), size: size)
        self.setTitle(title.rawValue.localized, for: .normal)
    }

}

class RoundButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        let radius: CGFloat = self.bounds.size.height / 2.0
        self.layer.cornerRadius = radius
    }
}

