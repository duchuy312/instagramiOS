//
//  ContentView.swift
//  instagramiOS
//
//  Created by Red on 06/12/2021.
//

import SwiftUI

let screenWidth = UIScreen.main.bounds.size.width
let screenHeight = UIScreen.main.bounds.size.height
@available(iOS 15.0, *)
struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State var selection: Int? = nil
    var disableForm: Bool {
        email.isEmpty || password.isEmpty
    }
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView {
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
                    text: $email,
                    border: 2,
                    warning: viewModel.emailPrompt(email: email)
                )
                SecureTextField(
                    placeholder: Text("Password").foregroundColor(.white.opacity(0.5)),
                    text: $password
                )
                NavigationLink(destination: BottomTab(), tag: 1, selection: $selection) {
                    CustomButton(title: "Login", action: {
                        self.selection = 1
                    })
                }
                .disabled(disableForm)
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
                    NavigationLink(destination: RegisterView(viewModel: ViewModel())) {
                        Text("Sign up")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            LoginView(viewModel: ViewModel())
                .previewInterfaceOrientation(.portrait)
        } else {
            // Fallback on earlier versions
        }
    }
}
