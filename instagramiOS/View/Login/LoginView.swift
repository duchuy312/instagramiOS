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
    @AppStorage(Setting.isLoginKey) var isLogin = DefaultSettings.isLoged
    @State private var email: String = ""
    @State private var password: String = ""
    @State var selection: Int? = nil
    @State private var isActiveNavigate = false
    @State var isLoading = false
    var disableForm: Bool {
        email.isEmpty || password.isEmpty
    }
    @ObservedObject var viewModel: ViewModel
    let API = ApiManager()

    func onLogin() {
        self.isActiveNavigate = true
        self.isLogin = true
    }
    var body: some View {
        NavigationView {
            LoadingView(isShowing: $isLoading) {
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
                NavigationLink(destination: BottomTab(), isActive: $isActiveNavigate) {
                    CustomButton(title: Strings.login.rawValue, action: onLogin)
                }.disabled(disableForm)
                TextNavigation(text: Strings.forgotPass.rawValue, textBold: Strings.helpForgot.rawValue, desAddress: AnyView(RegisterView(viewModel: ViewModel())))
                Spacer()
                Divider()
                TextNavigation(text: Strings.dontHaveAccount.rawValue, textBold: Strings.signup.rawValue, desAddress: AnyView(RegisterView(viewModel: ViewModel())))
                
            }
            .background(GradientBG)
            .ignoresSafeArea(.all)
            }
        }
        .navigationBarHidden(true)
    }
}

