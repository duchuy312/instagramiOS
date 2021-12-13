//
//  LikeTab.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

struct LikeTab: View {
    var body: some View {
        VStack {
            Spacer()
            Divider()
        }
        .background(Princeton)
        .ignoresSafeArea(.all)
    }
}

struct LikeTab_Previews: PreviewProvider {
    static var previews: some View {
        LikeTab()
    }
}
