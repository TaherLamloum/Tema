//
//  String+Extensions.swift
//  Tema
//
//  Created by taher elnehr on 11/08/2024.
//

import UIKit

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    func containsWithoutIgnoringCase(find: String) -> Bool {
        return self.range(of: find) != nil
    }
    func containsIgnoringCase(find: String) -> Bool {
        return self.range(of: find, options: .caseInsensitive) != nil
    }
    func toUIColor() -> UIColor{
        return UIColor(hexString: self)
    }
    func toCgColor() -> CGColor{
        return UIColor(hexString: self).cgColor
    }
    
    var htmlToAttributedString: NSAttributedString? {
        let style = NSMutableParagraphStyle()
        style.alignment = NSTextAlignment.left
        style.lineSpacing = 10
        
        guard let data = data(using: .utf8) else { return NSAttributedString(string: "", attributes: [.paragraphStyle: style]) }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
            
        } catch {
            return NSAttributedString()
        }
    }
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
    //    func isValidWith() -> Bool {
    //            let regex = "#”^[A-Za-z]+$”#"
    //            guard let gRegex = try? NSRegularExpression(pattern: regex) else {
    //                return false
    //            }
    //
    //            let range = NSRange(location: 0, length: self.utf16.count)
    //
    //            if gRegex.firstMatch(in: self, options: [], range: range) != nil {
    //                return true
    //            }
    //
    //            return false
    //        }
}
extension String {
    
    // MARK: - RegexType
    enum RegexType {
        case none
        case mobileNumberWithItalianCode    // Example: "+39 3401234567"
        case email                          // Example: "foo@example.com"
        case minLetters(_ letters: Int)     // Example: "Al"
        case minDigit(_ digits: Int)        // Example: "0612345"
        case onlyLetters                    // Example: "ABDEFGHILM"
        case onlyNumbers                    // Example: "132543136"
        case noSpecialChars                 // Example: "Malago'": OK - "Malagò": KO
        case password
        
        fileprivate var pattern: String {
            switch self {
            case .none:
                return ""
            case .mobileNumberWithItalianCode:
                return #"^(\+39 )\d{9,}$"#
            case .email:
                return #"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"#
            case .minLetters(let letters):
                return #"^\D{"# + "\(letters)" + #",}$"#
            case .minDigit(let digits):
                return #"^(\d{"# + "\(digits)" + #",}){1}$"#
            case .onlyLetters:
                return #"^[A-Za-z]+$"#
            case .onlyNumbers:
                return #"^[0-9]"#
            case .noSpecialChars:
                return #"^[A-Za-z0-9\s+\\\-\/?:().,']+$"#
            case .password:
                return #"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"#
                
            }
        }
    }
    
    
    
    func removeHTMLBreaks() -> String {
        let dddd = """
<p class=""MsoNormal"" dir=""RTL"" style=""direction:" rtl;="" unicode-bidi:="" embed;"=""><br></p><p class=""MsoNormal"" dir=""RTL"" style=""direction:" rtl;="" unicode-bidi:="" embed;"=""><span style=""font-weight:" bold;"="">
"""
        
            return self.replacingOccurrences(of: dddd, with: "")
        }
    
    func convertDateFormat(inputFormat: DateFormat, outputFormat: DateFormat) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = inputFormat.rawValue
        if let date = dateFormatter.date(from: self) {
            dateFormatter.dateFormat = outputFormat.rawValue
            return dateFormatter.string(from: date)
        } else {
            return "Invalid date"
        }
    }
}


enum DateFormat: String{
    case YYYMMDDHHMMSS = "yyyy-MM-dd HH:mm:ss"
    case HHMMA = "hh:mm a"
    case DDMMYYY_SLACH = "dd/MM/YYYY"
}

