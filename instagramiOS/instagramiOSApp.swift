//
//  instagramiOSApp.swift
//  instagramiOS
//
//  Created by Red on 06/12/2021.
//

import SwiftUI

@main
struct instagramiOSApp: App {
    var body: some Scene {
        WindowGroup {
            if #available(iOS 15.0, *) {
                LoginView(viewModel: ViewModel())
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
