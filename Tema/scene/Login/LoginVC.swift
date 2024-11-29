//
//  LoginVC.swift
//  Tema
//
//  Created by taher elnehr on 10/08/2024.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var borderView1: UIView!
    @IBOutlet weak var borderView2: UIView!
    @IBOutlet weak var forgetPasswordBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var continueAsGuestBtn: UIButton!
    @IBOutlet weak var continueAsGuestLbl: UILabel!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    var posts: [Post] = []{
        didSet{
            continueAsGuestLbl.text = posts.first?.title
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       initUI()
//        getData(url: "https://jsonplaceholder.typicode.com/posts", type: [Post].self, completion: <#(Result<[Post], any Error>) -> Void#>)
//
        getData(url: "https://jsonplaceholder.typicode.com/posts", type: [Post].self) { result in
            switch result {
            case .success(let posts):
                print(posts)
                self.posts = posts
            case .failure(let error):
                print(error)
            }
        }
    }
    
    @IBAction func registerBtnClicked(_ sender: Any) {
        let vc = RgisterVC()
        navigationController?.pushViewController(vc, animated: true)

    }
}
extension LoginVC{
    func initUI(){
        borderView1.addRadius(radius: 7)
        borderView2.addRadius(radius: 7)
        forgetPasswordBtn.custom(titleColor: .C707070, font: .Regular, size: .size_14, title: .FORGET_PASSWORD)
        loginBtn.addRadius(radius: 7)
        registerBtn.addRadius(radius: 7)
        registerBtn.addBorder(color: .CF1B25A, width: 1)
        loginBtn.custom(titleColor: .CFFFFFF, font: .Regular, size: .size_14, title: .LOGIN)
        registerBtn.custom(titleColor: .CF1B25A, font: .Regular, size: .size_14, title: .REGISTER)
        continueAsGuestBtn.custom(titleColor: .CF1B25A, font:.Regular, size: .size_14, title: .GUEST)
        continueAsGuestLbl.customLabel(color: .C707070, size: .size_14, font: .Regular, text: Lbls.CONTINUE.title)
        emailTxtField.customTxtField(color: .C9E9E9E, size: .size_12, font: .Regular, placeholder: .EMAIL)
        passwordTxtField.customTxtField(color: .C9E9E9E, size: .size_12, font: .Regular, placeholder: .PASSWORD)
    }
}
struct Post: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}
