//
//  String_validation.swift
//  iOSMVP
//
//  Created by Allan Nava on 28/10/2020.
//

import Foundation

extension String {
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    func isValidLenght(_ lenght: Int)-> Bool{
        return self.characters.count >= lenght
    }
}
