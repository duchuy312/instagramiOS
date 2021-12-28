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
    @State var isLoading = false
    var disableForm: Bool {
        email.isEmpty || password.isEmpty
    }
    @ObservedObject var viewModel: ViewModel
    let API = ApiManager()
    func onLogin() -> Void {
//        viewModel.login(email: viewModel.email, password: viewModel.password)
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
                NavigationLink(destination: BottomTab(), tag: 1, selection: $selection) {
                    CustomButton(title: Strings.login.rawValue, action: {
                        self.selection = 1
                    })
                }.disabled(disableForm)
                TextNavigation(text: Strings.forgotPass.rawValue, textBold: Strings.helpForgot.rawValue, desAddress: AnyView(RegisterView(viewModel: ViewModel())))
                Button(action: {
                    isLoading = true
                    // Mock some network request or other task
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        isLoading = false
                    }
                }, label: {
                    Text("Tap Me!")
                })
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

