//
//  RegisterView.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//


import SwiftUI
@available(iOS 15.0, *)
struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullname: String = ""
    @State private var username: String = ""
    @State var selectionRegister: Int? = nil
    @State var text = ""
    var disableForm: Bool {
        !viewModel.emailWarning(email: email).isEmpty ||
        !viewModel.passwordWarning(password: password).isEmpty ||
        !viewModel.emptyWarning(text: username).isEmpty ||
        !viewModel.emptyWarning(text: fullname).isEmpty
    }
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        NavigationView {
            VStack() {
                Image("plus_photo").resizable()
                    .renderingMode(.template)
                    .foregroundColor(.white)
                    .frame(width: wp(wp: 0.35),height: wp(wp: 0.35))
                    .padding(.top, reSize(height: 40))
                    .padding(.bottom, reSize(height: 20))
                CustomTextField(
                    isSecure: false,
                    placeholder: Text("Email"),
                    text: $email,
                    warning: viewModel.emailWarning(email: email)
                )
                CustomTextField(
                    isSecure: false,
                    placeholder: Text("Password"),
                    text: $password,
                    warning: viewModel.passwordWarning(password: password)
                )
                CustomTextField(
                    isSecure: false,
                    placeholder: Text("Fullname"),
                    text: $fullname,
                    warning: viewModel.emptyWarning(text: fullname)
                )
                CustomTextField(
                    isSecure: false,
                    placeholder: Text("Username"),
                    text: $username,
                    warning: viewModel.emptyWarning(text: username)
                )
                NavigationLink(destination: BottomTab(), tag: 1, selection: $selectionRegister) {
                    CustomButton(title: Strings.signup.rawValue, action: {
                        self.selectionRegister = 1
                    })
                }
                .disabled(disableForm)
                Spacer()
                Divider()
                TextNavigation(text: Strings.alreadyHaveAccount.rawValue, textBold: Strings.signin.rawValue, desAddress: AnyView(LoginView(viewModel: ViewModel())))
            }
            .background(GradientBG)
            .ignoresSafeArea(.all)
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Register: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            RegisterView(viewModel: ViewModel())
                .previewInterfaceOrientation(.portrait)
        } else {
            // Fallback on earlier versions
        }
    }
}
