//
//  UIView+Extension.swift
//  Tema
//
//  Created by taher elnehr on 10/08/2024.
//

import UIKit
import MOLH

extension UIView{
    
    func addRadius(radius: CGFloat){
        self.layer.cornerRadius = radius
    }
    func addBorder(color: Colors, width: CGFloat){
        self.layer.borderColor = UIColor(named: color.rawValue)?.cgColor
        self.layer.borderWidth = width
    }
    func addCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    func addCircleRadius(){
        DispatchQueue.main.async {
            self.layer.cornerRadius = self.layer.bounds.height/2
        }
    }
    func transformAr(){
            if MOLHLanguage.isArabic(){
                self.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }
        }
        func transformEn(){
            if !MOLHLanguage.isArabic(){
                self.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }
        }
    func addCustomShadow(x: CGFloat, y: CGFloat, blur: CGFloat, spread: CGFloat, shadowColor: String, scale: Bool = true, cRadius: CGFloat = 0, opacity: CGFloat) {
            // Shadow properties
//            let color = UIColor(hex: shadowColor).withAlphaComponent(opacity)
        let color = UIColor(named: shadowColor)?.withAlphaComponent(opacity)
        layer.shadowColor = color?.cgColor
            layer.shadowOpacity = 2.0
            layer.shadowOffset = CGSize(width: x, height: y)
            layer.shadowRadius = blur / 4.0
            
            
            // Spread
            if spread == 0 {
                layer.shadowPath = nil
            } else {
                let dx = -spread
                let rect = bounds.insetBy(dx: dx, dy: dx)
                layer.shadowPath = UIBezierPath(rect: rect).cgPath
            }
            
            layer.shouldRasterize = true
            layer.rasterizationScale = scale ? UIScreen.main.scale : 1
            
            // Corner radius
            self.layer.cornerRadius = cRadius
            self.clipsToBounds = false
            layer.masksToBounds = false
        }
}

