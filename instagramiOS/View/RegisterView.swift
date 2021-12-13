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
        email.isEmpty || password.isEmpty || fullname.isEmpty || username.isEmpty
    }
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        NavigationView {
            VStack {
                Image("plus_photo")
                    .renderingMode(.template)
                    .foregroundColor(.white)
                Spacer()
                CustomTextField(
                    placeholder: Text("Email").foregroundColor(.white.opacity(0.5)),
                    text: $email,
                    warning: viewModel.emailPrompt(email: email)
                )
                SecureTextField(
                    placeholder: Text("Password").foregroundColor(.white.opacity(0.5)),
                    text: $password
                )
                CustomTextField(
                    placeholder: Text("Fullname").foregroundColor(.white.opacity(0.5)),
                    text: $fullname,
                    warning: viewModel.emailPrompt(email: email)
                )
                CustomTextField(
                    placeholder: Text("Username").foregroundColor(.white.opacity(0.5)),
                    text: $username,
                    warning: viewModel.emailPrompt(email: email)
                )
                NavigationLink(destination: LoginView(viewModel: ViewModel()), tag: 1, selection: $selectionRegister) {
                    CustomButton(title: "Sign Up", action: {
                        self.selectionRegister = 1
                    })
                }
                .disabled(disableForm)
                Spacer()
                Divider()
                HStack() {
                    Text("Already have an account?")
                        .font(.system(size: 18))
                    NavigationLink(destination: LoginView(viewModel: ViewModel())) {
                        Text("Sign in")
                            .fontWeight(.bold)
                            .font(.system(size: 18))
                    }
                }
                .foregroundColor(.white)
            }
            .padding(.top, 40)
            .background(LinearGradient(gradient: Gradient(colors: [Iris, Grape, Vivid, Princeton]), startPoint: .bottomTrailing, endPoint: .topLeading))
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
