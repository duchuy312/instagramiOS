//
//  File.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var data : String
    var tFtext: String = ""
    var tFImage: String = ""
    var body: some View {
        HStack {
                Image(tFImage)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding()
                TextField(tFtext, text: $data)
                    .padding()
                    .font(Font.custom("SFCompactDisplay", size: 16))
                    .foregroundColor(.black)
            }
            .background(RoundedRectangle(cornerRadius: 10))
            .foregroundColor(Color(#colorLiteral(red: 0.9647058824, green: 0.9725490196, blue: 0.9882352941, alpha: 1)))
    }
}

