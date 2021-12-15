//
//  Validate.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 10/12/2021.
//

import Foundation
import Combine

let passRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$"
let emailRegex = "(?:[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}" + "~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\" + "x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[\\p{L}0-9](?:[a-" + "z0-9-]*[\\p{L}0-9])?\\.)+[\\p{L}0-9](?:[\\p{L}0-9-]*[\\p{L}0-9])?|\\[(?:(?:25[0-5" + "]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-" + "9][0-9]?|[\\p{L}0-9-]*[\\p{L}0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21" + "-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"

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
