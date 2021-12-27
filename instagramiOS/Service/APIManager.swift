//
//  APIManager.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 16/12/2021.
//

import Foundation
import Alamofire

let signin_Url = "https://run.mocky.io/v3/603ceccd-84fc-4d0d-89a3-f40140e729f4"
let signup_Url = "https://run.mocky.io/v3/255afa3f-ffb8-4d97-8bc2-2dc397d611dc"
let params: [String: [String]] = [
    "email" : ["dotrongan2806@gmail.com"],
    "password" : ["123456"]
]

class ApiManager{
    
    func signinAPI(email: String, password: String ,completion:@escaping (ResultLogin?) -> ()) {
        print("Sign in api.....")
        AF.upload(multipartFormData: { multipartFormData in
            multipartFormData.append(email.data(using: .utf8)!, withName: "email")
            multipartFormData.append(password.data(using: .utf8)!, withName: "password")
        }, to: signin_Url)
            .responseDecodable(of: ResultLogin.self) { response in
                
                switch response.result {
                case .success(let value):
                    completion(value)
                    //   completion(try? SomeRequest(protobuf: value))
                case .failure(_):
                    completion(nil)
                    //   completion(nil)
                }
            }
        
    }
    
    func callSignUp(username: String, fullname: String, password: String ,completion:@escaping (MessageSignUp?) -> ()) {
        AF.upload(multipartFormData: { multipartFormData in
            multipartFormData.append(username.data(using: .utf8)!, withName: "username")
            multipartFormData.append(fullname.data(using: .utf8)!, withName: "fullname")
            multipartFormData.append(password.data(using: .utf8)!, withName: "password")
        }, to: signup_Url)
            .responseDecodable(of: MessageSignUp.self) { response in
                
                switch response.result {
                case .success(let value):
                    completion(value)
                case .failure(_):
                    completion(nil)
                }
            }
        
    }
}
