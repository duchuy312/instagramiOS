//
//  HeaderBar.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 29/12/2021.
//

import SwiftUI

struct HeaderBarLike: View {
    var body: some View {
            HStack{
                Text("Pankaj Gaikar")
                    .font(.system(size: 20)).fontWeight(.bold)
                Spacer()
                HStack {
                    Image("plus_unselected")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                    Spacer()
                    Image("list")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.black)
                        .frame(width: 25, height: 25)
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
