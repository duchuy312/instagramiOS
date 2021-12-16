//
//  File.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

extension View {
    func endEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

@available(iOS 15.0, *)
struct CustomTextField: View {
    var isSecure: Bool
    var placeholder: Text
    @Binding var text: String
    @State var isInit: Bool = true
    @State var editingChanged: Bool = false
    var warning: String
    @FocusState private var isFieldIsFocused: Bool
    var body: some View {
        VStack (alignment: .leading) {
            ZStack(alignment: .leading) {
                if text.isEmpty { placeholder.font(.system(size: 20)).padding(.horizontal, 10).foregroundColor(.white.opacity(0.5)) }
                if isSecure {
                    SecureField("", text: $text)
                        .onTapGesture {
                            if isInit {
                                isInit = false
                            }
                        }
                        .focused($isFieldIsFocused)
                        .padding([.horizontal], 10)
                        .frame(width: screenWidth - 50, height: screenHeight * 0.07)
                        .font(.system(size: 20))
                        .background(Color.white.opacity(0.1))
                        .foregroundColor(.white)
                        .cornerRadius(5)
                } else {
                    TextField("", text: $text, onEditingChanged: { (editing) in
                        if editing {
                            self.editingChanged = editing
                            if isInit {
                                isInit = false
                            }
                        }
                    })
                        .focused($isFieldIsFocused)
                        .padding([.horizontal], 10)
                        .frame(width: screenWidth - 50, height: screenHeight * 0.07)
                        .font(.system(size: 20))
                        .background(Color.white.opacity(0.1))
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }
            }
            if warning != "" {
                if isFieldIsFocused {
                    Text("").frame(height: 10)
                } else if (!isInit) {
                    Text(warning)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.system(size: 12))
                        .frame(height: 17)
                        .padding(.horizontal, 10)
                } else {
                    Text("").frame(height: 10)
                }
            } else {
                Text("").frame(height: 10)
            }
            
        }
        .padding(.horizontal, 25)
        
    }
}

