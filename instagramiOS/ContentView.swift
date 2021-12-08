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
struct ContentView: View {
    @State private var email: String = ""
    var body: some View {
        VStack {
            VStack(){
                Image("Instagram_logo_white").resizable()
                    .frame(width: 250, height: 100)
                  }
            .padding(.top, 60)
            .padding(.bottom, 30)
            TextField("email", text: $email)
                .frame(width: 360, height: 65)
                .padding([.horizontal], 10)
                .font(Font.custom("SFCompactDisplay", size: 20))
                .background(Color.white.opacity(0.1))
                .padding(8)
                .foregroundColor(.white)
            TextField("email", text: $email)
                .frame(width: 360, height: 65)
                .padding([.horizontal], 10)
                .font(Font.custom("SFCompactDisplay", size: 20))
                .background(Color.white.opacity(0.1))
                .foregroundColor(.white)
                .padding(.bottom, 20)
            Button("Log in") {
                print("Button tapped!")
            }
                .foregroundColor(.white)
                .font(Font.custom("SFCompactDisplay", size: 20))
                .frame(width: 380, height: 65)
                .background(Iris.opacity(0.2))
                .cornerRadius(5)
            HStack() {
                Text("Forgot your password?")
                    .font(Font.custom("SFCompactDisplay", size: 16))
                Text("get help signin")
                    .font(Font.custom("SFCompactDisplay", size: 18))
            }
                .padding(.top, 16)
                .foregroundColor(.white)
            Divider()
            Spacer()
            }
            .background(LinearGradient(gradient: Gradient(colors: [Iris, Grape, Vivid, Princeton]), startPoint: .bottomTrailing, endPoint: .topLeading))
            .ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            ContentView()
        } else {
            // Fallback on earlier versions
        }
    }
}
