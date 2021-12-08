//
//  File.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    let screenWidth = UIScreen.main.bounds.size.width
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder.font(Font.custom("SFCompactDisplay", size: 20)).padding(.horizontal, 10) }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
                .padding([.horizontal], 10)
                .frame(width: screenWidth - 50, height: 65)
                .font(Font.custom("SFCompactDisplay", size: 20))
                .background(Color.white.opacity(0.1))
                .foregroundColor(.white)
                .padding(.vertical, 6)
        }
    }
}

