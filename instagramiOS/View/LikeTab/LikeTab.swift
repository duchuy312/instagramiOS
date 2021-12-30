//
//  LikeTab.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

struct LikeTab: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Activity")
                .font(.system(size: 20))
                .fontWeight(.bold)
            ScrollView(.vertical, showsIndicators: false) {
                if #available(iOS 15.0, *) {
                    ItemLike(likeDatas: likeDatas)
                } else {
                    // Fallback on earlier versions
                }
            }
            Spacer()
            Divider()
        }
        .padding(.horizontal, 10)
    }
}

struct LikeTab_Previews: PreviewProvider {
    static var previews: some View {
        LikeTab()
    }
}
