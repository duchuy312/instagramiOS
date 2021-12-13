//
//  File.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI


@available(iOS 15.0, *)
struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    var warning: String
    @FocusState private var isFieldIsFocused: Bool
    var body: some View {
        VStack (alignment: .leading) {
            ZStack(alignment: .leading) {
                if text.isEmpty { placeholder.font(Font.custom("SFCompactDisplay", size: 20)).padding(.horizontal, 10) }
                TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
                    .focused($isFieldIsFocused)
                    .padding([.horizontal], 10)
                    .frame(width: screenWidth - 50, height: screenHeight * 0.07)
                    .font(Font.custom("SFCompactDisplay", size: 20))
                    .background(Color.white.opacity(0.1))
                    .foregroundColor(.white)
                    .cornerRadius(5)
            }
            if !text.isEmpty && !isFieldIsFocused {
                Text(warning)
                    .foregroundColor(.white)
                .font(.caption)
            }
        }
        .padding(.bottom, 12)

    }
}

