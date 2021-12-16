//
//  APIManager.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 16/12/2021.
//

import Foundation
import Alamofire

let signin_Url = "https://run.mocky.io/v3/255afa3f-ffb8-4d97-8bc2-2dc397d611dc"
let params: [String: [String]] = [
    "email" : ["dotrongan2806@gmail.com"],
    "password" : ["123456"]
]

class ApiManager{
    func signinAPI() {
        print("saDASDASDADASD")
        AF.upload(multipartFormData: { multipartFormData in
            multipartFormData.append(Data("one".utf8), withName: "one")
            multipartFormData.append(Data("two".utf8), withName: "two")
        }, to: signin_Url)
            .responseJSON{ response in
                debugPrint(response)
            }
    }
    
}
