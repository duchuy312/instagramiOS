//
//  ProfileTab.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

struct ProfileTab: View {
    var body: some View {
        VStack {
            Spacer()
            Divider()
        }
        .background(Color.purple)
        .ignoresSafeArea(.all)
    }
}

struct ProfileTab_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTab()
    }
}
