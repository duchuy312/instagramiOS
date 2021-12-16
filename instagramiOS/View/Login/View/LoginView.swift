//
//  ContentView.swift
//  instagramiOS
//
//  Created by Red on 06/12/2021.
//

import SwiftUI
import Alamofire

@available(iOS 15.0, *)
struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State var selection: Int? = nil
    @State private var isActiveNavigate = false
    var disableForm: Bool {
        email.isEmpty || password.isEmpty
    }
    @ObservedObject var viewModel: ViewModel
    let API = ApiManager()
    var body: some View {
        NavigationView {
            VStack {
                Image("Instagram_logo_white").resizable()
                    .frame(width: 250, height: 100)
                    .padding(.top, reSize(height: 80))
                    .padding(.bottom, reSize(height: 40))
                CustomTextField(
                    isSecure: false,
                    placeholder: Text("Email"),
                    text: $email,
                    warning: viewModel.emptyWarning(text: email)
                )
                CustomTextField(
                    isSecure: true,
                    placeholder: Text("Password"),
                    text: $password,
                    warning: viewModel.emptyWarning(text: password)
                )
                    CustomButton(title: Strings.login.rawValue, action: {
                        self.API.signinAPI()
                    })
                TextNavigation(text: Strings.forgotPass.rawValue, textBold: Strings.helpForgot.rawValue, desAddress: AnyView(RegisterView(viewModel: ViewModel())))
                Spacer()
                Divider()
                TextNavigation(text: Strings.dontHaveAccount.rawValue, textBold: Strings.signup.rawValue, desAddress: AnyView(RegisterView(viewModel: ViewModel())))
                
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
