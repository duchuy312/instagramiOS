//
//  CustomButton.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 09/12/2021.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                Text(title).foregroundColor(Color.white).font(.system(size: 20)).fontWeight(.bold)
                Spacer()
            }
        }
        .foregroundColor(.white)
        .font(.system(size: 20))
        .frame(width: screenWidth - 50, height: screenHeight * 0.07)
        .background(Iris.opacity(0.3))
        .cornerRadius(5)
    }
}
