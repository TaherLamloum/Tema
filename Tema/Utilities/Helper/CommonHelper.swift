//
//  CommonHelper.swift
//  Tema
//
//  Created by taher elnehr on 11/08/2024.
//

import UIKit
import MOLH
import SwiftMessages

public var screenWidth: CGFloat { get { return UIScreen.main.bounds.size.width } }
public var screenHeight: CGFloat { get { return UIScreen.main.bounds.size.height } }
public var iPhoneXFactor: CGFloat { get {return ((screenWidth * 1.00) / 360.0)} }

func isEnglish() -> Bool{
 if MOLHLanguage.isRTLLanguage() { return false } else{ return true }
}
let appDelegate = UIApplication.shared.delegate as! AppDelegate

func isArabic() -> Bool{
    if MOLHLanguage.isRTLLanguage() { return false } else{ return true }
}
func convertOpacity(passedNumber : Int) -> CGFloat {
    return (CGFloat(passedNumber)*100*1.0)/(255.0*100.0)
}

//func hideLoaderForController(_ loader: KHLoaderView) {
//   DispatchQueue.main.async {
//       loader.removeFromSuperview()
//       loader.stopAnimation()
//   }
//}

public func getCurrentVC() -> UIViewController? {
    // we must get the root UIViewController and iterate through presented views
    if let rootController = UIApplication.shared.windows.first?.rootViewController {
        var currentController: UIViewController! = rootController
        // Each ViewController keeps track of the view it has presented, so we
        // can move from the head to the tail, which will always be the current view
        while( currentController.presentedViewController != nil ) {
            currentController = currentController.presentedViewController
        }
        return currentController
    }
    return nil
}
public func mainQueue(_ closure: @escaping ()->()) {
    DispatchQueue.main.async(execute: closure)
}
//MARK: - handle message toast
public func displayMessage(message: String, messageError: Bool) {
    
    let view = MessageView.viewFromNib(layout: .cardView)
    if messageError == true {
        view.configureTheme(.error)
        view.alpha = 0.5
    } else {
        view.configureTheme(.success)
        view.alpha = 0.8
    }
    view.titleLabel?.isHidden = true
    view.bodyLabel?.text = message
    view.titleLabel?.textColor = UIColor.white
    view.bodyLabel?.textColor = UIColor.white
    view.button?.isHidden = true
    view.bodyLabel?.font = UIFont(name: Fonts.Medium.rawValue.localized, size: Size.size_13.xFactor)
    view.titleLabel?.font = UIFont(name: Fonts.Medium.rawValue.localized, size: Size.size_13.xFactor)
    view.titleLabel?.textAlignment = ((isEnglish()) ? .left : .right)
    view.bodyLabel?.textAlignment = ((isEnglish()) ? .left : .right)
    view.alpha = 0.9
    var config = SwiftMessages.Config()
    config.presentationStyle = .top
    config.shouldAutorotate = true
    SwiftMessages.show(config: config, view: view)
}
//validate email
public func isValidEmail(_ testStr:String) -> Bool {
    //let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    let emailRegEx = "[A-Z0-9a-z._%+-]+@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,}"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    let result = emailTest.evaluate(with: testStr)
    return result
}

func isValidPassword(_ password: String) -> Bool {
    let passwordRegex = "^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$"
    let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
    return passwordPredicate.evaluate(with: password)
}

