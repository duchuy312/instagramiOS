//
//  HeaderBar.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 29/12/2021.
//

import SwiftUI

struct HeaderBarLike: View {
    @AppStorage(Setting.isLoginKey) var isLogin = DefaultSettings.isLoged
    @State private var isActiveNavigate = false
    func onLogout() {
        self.isActiveNavigate = true
        self.isLogin = false
    }
    var body: some View {
        HStack{
            Text("Pankaj Gaikar")
                .font(.system(size: 20)).fontWeight(.bold)
            Spacer()
            HStack {
                Button(action: {}, label: {
                    Image("plus_unselected")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                })
                
                Spacer()
                NavigationLink(destination: LoginView(viewModel: ViewModel()), isActive: $isActiveNavigate) {
                    Button(action: onLogout, label: {
                        Image("menu")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.black)
                            .frame(width: 30, height: 30)
                    })
                }
                
                
            }
            .frame(width: 80, height: 30)
            
        }
        .padding(.horizontal, 10)
        .padding(.bottom, 10)
    }
}

struct HeaderBar_Previews: PreviewProvider {
    static var previews: some View {
        HeaderBarLike()
    }
}
