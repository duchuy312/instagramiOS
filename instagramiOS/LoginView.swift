//
//  ContentView.swift
//  instagramiOS
//
//  Created by Red on 06/12/2021.
//

import SwiftUI
let Iris = Color(red: 0.317, green: 0.356, blue: 0.831)
let Grape = Color(red: 0.505, green: 0.203, blue: 0.686)
let Vivid = Color(red: 0.866, green: 0.164, blue: 0.482)
let Princeton = Color(red: 0.96, green: 0.521, blue: 0.16)
let screenWidth = UIScreen.main.bounds.size.width

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            VStack(){
                Image("Instagram_logo_white").resizable()
                    .frame(width: 250, height: 100)
                  }
            .padding(.top, 60)
            .padding(.bottom, 30)
            .frame(width: screenWidth)
            CustomTextField(
                placeholder: Text("Email").foregroundColor(.white.opacity(0.5)),
                        text: $email
                    )
            CustomTextField(
                placeholder: Text("Password").foregroundColor(.white.opacity(0.5)),
                        text: $password
                    )
            Button("Log in") {
                print("Button tapped!")
            }
                .foregroundColor(.white)
                .font(Font.custom("SFCompactDisplay", size: 20))
                .frame(width: screenWidth - 50, height: 65)
                .background(Iris.opacity(0.2))
                .cornerRadius(5)
            HStack() {
                Text("Forgot your password?")
                    .font(.system(size: 18))
                Text("get help signin")
                    .fontWeight(.bold)
                    .font(.system(size: 18))
            }
                .padding(.top, 16)
                .foregroundColor(.white)
            Spacer()
            HStack() {
                Text("Don't have an account?")
                    .font(.system(size: 18))
                Text("Sign up")
                    .fontWeight(.bold)
                    .font(.system(size: 18))
            }
            .padding(.bottom, 16)
            .foregroundColor(.white)
            }
            .background(LinearGradient(gradient: Gradient(colors: [Iris, Grape, Vivid, Princeton]), startPoint: .bottomTrailing, endPoint: .topLeading))
            .ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            LoginView()
        } else {
            // Fallback on earlier versions
        }
    }
}
