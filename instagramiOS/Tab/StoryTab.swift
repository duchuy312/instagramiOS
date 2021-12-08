//
//  StoryTab.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

struct StoryTab: View {
    var body: some View {
        VStack {
            Spacer()
            Divider()
        }
        .background(Vivid)
        .ignoresSafeArea(.all)
    }
}

struct StoryTab_Previews: PreviewProvider {
    static var previews: some View {
        StoryTab()
    }
}
