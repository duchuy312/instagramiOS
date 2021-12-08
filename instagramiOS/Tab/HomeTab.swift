//
//  HomeTab.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

struct HomeTab: View {
    var body: some View {
        VStack {
            Spacer()
            Divider()
        }
        .background(Iris)
        .ignoresSafeArea(.all)
    }
    
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}
