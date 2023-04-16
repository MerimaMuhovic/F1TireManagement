//
//  String+Regex.swift
//  F1TireManagment
//
//  Created by Merima Muhovic on 16. 4. 2023..
//

import Foundation

enum RegEx: String {
    case email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
    case name =  "[A-ZČĆŠŽĐ][A-Za-zČčĆćŠšŽžĐđ]+(-[A-ZČĆŠŽĐ][A-Za-zČčĆćŠšŽžĐđ]+)?"
    case password = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@$!%*?&])[A-Za-z0-9@$!%*?&]{8,}$"
    }

extension String {
    func isEmail() -> Bool {
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", RegEx.email.rawValue)
        return emailPredicate.evaluate(with: self)
    }
    
    func isName() -> Bool {
        let namePredicate = NSPredicate(format: "SELF MATCHES %@", RegEx.name.rawValue)
        return namePredicate.evaluate(with: self)
    }
    
    func isPassword() -> Bool {
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", RegEx.password.rawValue)
        return passwordPredicate.evaluate(with: self)
    }
}
