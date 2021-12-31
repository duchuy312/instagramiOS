//
//  HeaderView.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 13/12/2021.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
            HStack{
                Image("Instagram_logo_white")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.black)
                    .frame(width: 80, height: 30)
                Spacer()
                HStack {
                    Button(action: {}, label: {
                        Image("plus_unselected")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.black)
                            .frame(width: 30, height: 30)
                    })
                    Spacer()
                    Button(action: {}, label: {
                        Image("comment")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.green)
                            .frame(width: 30, height: 30)
                    })
                }
                .frame(width: 80, height: 30)
                
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 10)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
