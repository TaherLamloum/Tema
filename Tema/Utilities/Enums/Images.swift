//
//  Images.swift
//  Tema
//
//  Created by taher elnehr on 21/08/2024.
//

import UIKit

enum Images: String{
    case iAgreeSelect = "check_sel"
    case iAgreeunSelect = "agreeImg"
//    iAgreeImg.image = UIImage(named: isIAgree ? Images.iAgreeSelect.rawValue : Images.iAgreeunSelect.rawValue)
    var image: UIImage{
        return UIImage(named: self.rawValue)!
    }
    
}
