//
//  UITextField+Extension.swift
//  Tema
//
//  Created by taher elnehr on 11/08/2024.
//

import UIKit
import MOLH

extension UITextField {
    
    func customTxtField(color: Colors, size: Size, font: Fonts, placeholder: TxtFields = .NONE, text: String? = "", isPassword: Bool = false, isCenter: Bool = false) {
        
        self.textColor = UIColor(hexString: color.rawValue)
        let size = iPhoneXFactor*(CGFloat(size.rawValue))
        self.font = UIFont(name: (font.rawValue.localized), size: size)
        self.borderStyle = .none
        
        if(text == ""){
            self.attributedPlaceholder = NSAttributedString(string: placeholder.rawValue.localized, attributes: [NSAttributedString.Key.foregroundColor: UIColor(hexString: Colors.CA3ADBE.rawValue)])/////
            self.placeholder = placeholder.rawValue.localized
        }
        self.placeholder = placeholder.rawValue.localized
        if (!((text?.isEmpty) == nil)) {
            self.text = text
        }
        
        self.isSecureTextEntry = isPassword ? true : false
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
        self.textAlignment =  isCenter ? .center : (MOLHLanguage.isArabic() ? .right : .left)
        self.returnKeyType = .default
    }
    
    func clearTextFieldPadding() {
        let leftPaddingView = UIView(frame: CGRect(x: 0*iPhoneXFactor, y: 0, width: 0*iPhoneXFactor, height: self.frame.size.height))
        self.leftView = leftPaddingView
        self.leftView?.isHidden = true
        self.rightView?.isHidden = true
    }
    
    func adjustPadding(widthForPadding : CGFloat) {
        let leftPaddingView = UIView(frame: CGRect(x: 30*iPhoneXFactor, y: 0, width: widthForPadding, height: self.frame.size.height))
        leftPaddingView.backgroundColor = .green
        self.leftView = leftPaddingView
        self.leftView?.isHidden = false
        self.rightView?.isHidden = false
        
    }
}

extension UITextField  {
    func addLowerLine(withColor : UIColor){
        let line = UIView()
        line.backgroundColor = withColor
        line.frame = CGRect(x: 0,
                            y: self.frame.height - 1, width: self.frame.width, height: 1)
        self.addSubview(line)
    }
}

class linedTextField: UITextField {
    override func layoutSubviews() {
        super.layoutSubviews()
        self.addLowerLine(withColor: UIColor.lightGray.withAlphaComponent(0.5))
    }
}
