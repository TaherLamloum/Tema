//
//  RgisterVC.swift
//  Tema
//
//  Created by taher elnehr on 18/08/2024.
//

import UIKit

class RgisterVC: UIViewController {
    
    @IBOutlet var borderViews: [UIView]!
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var iAgreeLbl: UILabel!
    @IBOutlet weak var termsBtn: UIButton!
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var emailRTxtField: UITextField!
    @IBOutlet weak var mobileTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var retypePasswordTxtField: UITextField!
    @IBOutlet weak var iAgreeImg: UIImageView!
    
    var isIAgree = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    @IBAction func iAgreeBtnClicked(_ sender: Any) {
        isIAgree.toggle()
        iAgreeImg.image = isIAgree ? Images.iAgreeSelect.image : Images.iAgreeunSelect.image
    }
}
extension RgisterVC{
    func initUI(){
        retypePasswordTxtField.customTxtField(color: .C9E9E9E, size: .size_12, font: .Regular, placeholder: .REPASSWORD)
        mobileTxtField.customTxtField(color: .C9E9E9E, size: .size_12, font: .Regular, placeholder: .MOBILE)
        emailRTxtField.customTxtField(color: .C9E9E9E, size: .size_12, font: .Regular, placeholder: .MAIL)
        passwordTxtField.customTxtField(color: .C9E9E9E, size: .size_12, font: .Regular, placeholder: .PASSWORD)
        for view in borderViews{
            view.addRadius(radius: 7)
        }
        registerBtn.backgroundColor = .F_1_B_25_A
        registerBtn.addRadius(radius: 7)
        registerBtn.custom(titleColor: .CFFFFFF, font: .Regular, size: .size_14, title: .REGISTER)
        termsBtn.custom(titleColor: .CF1B25A, font: .Regular, size: .size_12, title: .TERMS)
        iAgreeLbl.customLabel(color: .C9E9E9E, size: .size_12, font: .Regular, text: Lbls.AGREE.title)
        nameTxtField.customTxtField(color: .C9E9E9E, size: .size_12, font: .Regular, placeholder: .NAME)
    }
}
