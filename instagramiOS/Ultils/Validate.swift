//
//  Validate.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 10/12/2021.
//

import Foundation
import Combine

let passRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$"
let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

func isValidEmail(email: String) -> Bool {
    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegex)
    return emailPred.evaluate(with: email)
}

func isValidPassword(password: String) -> Bool {
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", passRegex)
    return passwordTest.evaluate(with: password)
}

class ViewModel: ObservableObject
{
    func emailPrompt(email: String) -> String {
        if isValidEmail(email: email) {
            return ""
        }
        return "Email has in valid!"
    }
    
    func passwordPrompt(password: String) -> String {
        if isValidPassword(password: password) {
            return ""
        }
        return "Password must be between 8 and 15 characters containing at least one number and one capital letter"
    }
    
    func login(isEmailValid: String, isPasswordValid: String) -> Bool {
        if isEmailValid.isEmpty && isPasswordValid.isEmpty {
            // TODO: call api login here! and return response
            return true
        } else {
            return false
        }
    }
    
}
