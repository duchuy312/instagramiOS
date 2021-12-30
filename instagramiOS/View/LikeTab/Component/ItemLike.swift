//
//  ItemLike.swift
//  instagramiOS
//
//  Created by Red on 30/12/2021.
//

import SwiftUI
@available(iOS 15.0, *)
struct ItemLike: View {
    let likeDatas: [ActivityData]
    var body: some View {
        VStack() {
            ForEach(self.likeDatas, id: \.id) { (likedata) in
                HStack(alignment: .center) {
                    AsyncImage(url: URL(string: randomImage)) { image in
                        image.resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                    } placeholder: {
                        Image("blankpage").resizable()
                            .frame(width: 40, height: 40)
                    }
                    .clipShape(Circle())
                    Group {
                        Text(likedata.name)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                        +
                        Text(" " + likedata.content)
                            .font(.system(size: 14))
                        +
                        Text(" " + "5" + "h")
                            .font(.system(size: 13))
                            .foregroundColor(.black.opacity(0.5))
                        
                    }

                    Spacer()
                    
                    switch likedata.type {
                    case "likepost":
                        AsyncImage(url: URL(string: randomImage)) { image in
                            image.resizable()
                                .frame(width: 40, height: 40)
                        } placeholder: {
                            Image("blankpage").resizable()
                                .frame(width: 40, height: 40)
                        }
        
                    case "know":
                        ActivityButton(action: {}, buttonText: "Follow")
                    case "following":
                        ActivityButton(action: {}, buttonText: "Following")
                    default:
                        ActivityButton(action: {}, buttonText: "Follow")
                    }
                }
                .padding(.vertical, 5)
            }
        }

    }
}

struct ItemLike_Previews: PreviewProvider {
    
    static var previews: some View {
        if #available(iOS 15.0, *) {
            ItemLike(likeDatas: likeDatas)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct ActivityButton: View {
    var action: () -> Void
    var buttonText: String
    var body: some View {
        Button(action: action, label: {
            if #available(iOS 15.0, *) {
                Text(buttonText)
                    .frame(width: 80, height: 25)
                    .font(.system(size: 15))
                    .foregroundColor(buttonText == "Follow" ? .white : .black)
                    .background(buttonText == "Follow" ? .blue : .white)
                    .cornerRadius(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(buttonText == "Follow" ? Color.blue : Color.gray, lineWidth: 1)
                    )
            } else {
                // Fallback on earlier versions
            }
        })
    }
}
