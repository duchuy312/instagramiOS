//
//  RegisterView.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//


import SwiftUI

struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullname: String = ""
    @State private var username: String = ""
    @State var selectionRegister: Int? = nil
    @State var text = ""
    var body: some View {
        NavigationView {
        VStack {
            VStack(){
                Image("plus_photo")
                    .renderingMode(.template)
                    .foregroundColor(.white)
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
            CustomTextField(
                placeholder: Text("Fullname").foregroundColor(.white.opacity(0.5)),
                        text: $fullname
                    )
            CustomTextField(
                placeholder: Text("Username").foregroundColor(.white.opacity(0.5)),
                        text: $username
                    )
            NavigationLink(destination: LoginView(), tag: 1, selection: $selectionRegister) {
                Button(action: {
                    print("login tapped")
                    self.selectionRegister = 1
                }) {
                    HStack {
                        Spacer()
                        Text("Sign Up").foregroundColor(Color.white).font(.system(size: 20)).fontWeight(.bold)
                        Spacer()
                    }
                }
                .foregroundColor(.white)
                .font(Font.custom("SFCompactDisplay", size: 20))
                .frame(width: screenWidth - 50, height: 65)
                .background(Iris.opacity(0.2))
                .cornerRadius(5)
            }
            Spacer()
            HStack() {
                Text("Already have an account?")
                    .font(.system(size: 18))
                NavigationLink(destination: LoginView()) {
                    Text("Sign in")
                        .fontWeight(.bold)
                        .font(.system(size: 18))
                }
            }
            .padding(.bottom, 16)
            .foregroundColor(.white)
            }
            
            .background(LinearGradient(gradient: Gradient(colors: [Iris, Grape, Vivid, Princeton]), startPoint: .bottomTrailing, endPoint: .topLeading))
            .ignoresSafeArea(.all)
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Register: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            RegisterView()
        } else {
            // Fallback on earlier versions
        }
    }
}
