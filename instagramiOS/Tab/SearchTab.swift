//
//  SearchTab.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

struct SearchTab: View {
    var body: some View {
        VStack {
            Spacer()
            Divider()
        }
        .background(Grape)
        .ignoresSafeArea(.all)
    }
}

struct SearchTab_Previews: PreviewProvider {
    static var previews: some View {
        SearchTab()
    }
}
