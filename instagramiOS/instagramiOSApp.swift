//
//  instagramiOSApp.swift
//  instagramiOS
//
//  Created by Red on 06/12/2021.
//

import SwiftUI

@main
struct instagramiOSApp: App {
    @AppStorage(Setting.isLoginKey) var isLogin = DefaultSettings.isLoged
    var body: some Scene {
        WindowGroup {
            if isLogin {
                BottomTab()
            } else {
                LoginView(viewModel: ViewModel())
            }
                
        }
    }
}
