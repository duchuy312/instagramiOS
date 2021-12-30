//
//  AuthModel.swift
//  instagramiOS
//
//  Created by Red on 26/12/2021.
//

import Foundation

typealias ResultLogin = [String: ResultItem]


struct ResultItem: Decodable  {
    var errorCode: Int
    var message: String
    var resultData: AccestToken
}

struct AccestToken: Decodable {
    var access_token : String
    var clientNum : String
}

struct MessageSignUp: Codable {
    let success: String
}

struct Setting {
    static let isLoginKey = "isLogin"
}

enum DefaultSettings {
    static let isLoged = false
}

enum Settings: String {
    case isLogined
    case userInfo
}
