//
//  ContentView.swift
//  instagramiOS
//
//  Created by Red on 06/12/2021.
//

import SwiftUI

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
                Image("Instagram_logo_white").resizable()
                    .frame(width: 250, height: 100)
                    .padding(.top, screenHeight * 0.08)
                    .padding(.bottom, screenHeight * 0.04)
                CustomTextField(
                    isSecure: false,
                    placeholder: Text("Email"),
                    text: $email,
                    warning: ""
                )
                CustomTextField(
                    isSecure: true,
                    placeholder: Text("Password"),
                    text: $password,
                    warning: ""
                )
                NavigationLink(destination: BottomTab(), tag: 1, selection: $selection) {
                    CustomButton(title: Strings.login.rawValue, action: {
                        self.selection = 1
                    })
                }
                .disabled(disableForm)
                TextNavigation(text: Strings.forgotPass.rawValue, textBold: Strings.helpForgot.rawValue, desAddress: AnyView(RegisterView(viewModel: ViewModel())))
                Spacer()
                Divider()
                TextNavigation(text: Strings.dontHaveAccount.rawValue, textBold: Strings.signup.rawValue, desAddress: AnyView(RegisterView(viewModel: ViewModel())))
                Spacer()
                    .frame(height: reSize(height: 20))
                
            }
            .background(GradientBG)
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
