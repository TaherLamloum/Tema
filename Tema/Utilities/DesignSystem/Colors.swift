//
//  Colors.swift
//  Tema
//
//  Created by taher elnehr on 10/08/2024.
//

import UIKit

enum Colors: String{
    case CFFFFFF = "#FFFFFF"
    case CF59DD3 = "#F59DD3"
    case C1F293A = "#1F293A"
    case C000000 = "#000000"
    case CF3F3F3 = "#F3F3F3"
    case CA3ADBE = "#A3ADBE"
    case C747E90 = "#747E90"
    case C707070 = "#707070"
    case CF1EFF1 = "#F1EFF1"
    case CF1B25A = "#F1B25A"
    case C9E9E9E = "#9E9E9E"
    case C070034 = "#070034"
    case CF5F5F5 = "#F5F5F5"
    case C8E8E8E = "#8E8E8E"
    case C989898 = "#989898"
    case C58595B = "#58595B"
    case C0079FB = "#0079FB"
    case C24955C = "#24955C"
    case CDB0000 = "#DB0000"
    case CD9D9D9 = "#D9D9D9"
    case C525252 = "#525252"
    case CE2283D = "#E2283D"
    case C535353 = "#535353"
    case CE5E5E5 = "#E5E5E5"
    case C656565 = "#656565"
    case CFF0909 = "#FF0909"
    case C26A800 = "#26A800"
    case C212121 = "#212121"
    case C505050 = "#505050"
    case CE8E8E8 = "#E8E8E8"
    case C2D2D2D = "#2D2D2D"
    case C231F1F = "#231F1F"
    case CFA7916 = "#FA7916"
    case CD8AD45 = "#D8AD45"
    case CE6E6E6 = "#E6E6E6"
    case CFFAE00 = "#FFAE00"
    case C666666 = "#666666"
    case CF6F6F6 = "#F6F6F6"
    case C2C2C2C = "#2C2C2C"
    case C28D68C = "#28D68C"
    case CEFEFEF = "#EFEFEF"
    case C1AAEAC = "#1AAEAC"
    case C292929 = "#292929"
    case CF93C3C = "#F93C3C"
    
    var hex: UIColor {
        return UIColor(hexString: self.rawValue)
    }
    var cgColor: CGColor {
        return UIColor(hexString: self.rawValue).cgColor
    }
}
