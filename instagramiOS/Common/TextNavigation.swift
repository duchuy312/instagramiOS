//
//  TextNavigation.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 14/12/2021.
//

import SwiftUI

struct TextNavigation: View {
    var text: String
    var textBold: String
    var desAddress: AnyView
    
    var body: some View {
        return HStack() {
            Text(text)
                .font(.system(size: 16))
            NavigationLink(destination: desAddress) {
                Text(textBold)
                    .fontWeight(.bold)
                    .font(.system(size: 16))
            }
        }
        .foregroundColor(.white)
        .padding(.bottom, reSize(height: 20))
    }
}

//struct TextNavigation_Previews: PreviewProvider {
//    static var previews: some View {
//        TextNavigation()
//    }
//}
