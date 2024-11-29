//
//  LoginTwoVC.swift
//  Tema
//
//  Created by taher elnehr on 15/08/2024.
//

import UIKit

class LoginTwoVC: UIViewController {
    
    @IBOutlet var borderViews: [UIView]!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var forgetPasswordBtn: UIButton!
    @IBOutlet weak var accountLbl: UILabel!
    @IBOutlet weak var registerBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
           initUI()
    }
}
extension LoginTwoVC{
    func initUI(){
        registerBtn.custom(titleColor: .CF1B25A, font: .Regular, size: .size_14, title: .REGISTER)
        accountLbl.customLabel(color: .C707070, size: .size_14, font: .Regular, text: Lbls.ACCOUNT.title)
        forgetPasswordBtn.custom(titleColor: .C070034, font: .Regular, size: .size_14, title: .FORGET_PASSWORD)
        loginBtn.custom(titleColor: .CFFFFFF, font: .Regular, size: .size_14, title: .LOGIN)
        emailTxtField.customTxtField(color: .C9E9E9E, size: .size_12, font: .Regular, placeholder: .EMAIL)
        passwordTxtField.customTxtField(color: .C9E9E9E, size: .size_12, font: .Regular, placeholder: .PASSWORD)
        for view in borderViews+[loginBtn]{
            view?.addCircleRadius()
        }
    }
}
