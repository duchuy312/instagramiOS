//
//  ItemLike.swift
//  instagramiOS
//
//  Created by Red on 30/12/2021.
//

import SwiftUI
@available(iOS 15.0, *)
struct ItemLike: View {
    var likeModel: LikeModel
    
    var body: some View {
        HStack(alignment: .center) {
            AsyncImage(url: URL(string: "https://picsum.photos/200")) { image in
                image.resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
            } placeholder: {
                Image("blankpage").resizable()
                    .frame(width: 40, height: 40)
            }
            .clipShape(Circle())
            
            Text("activityModel.contentAction")
                .font(.system(size: 14))
            +
            Text(" " + "activityModel.timeActionAgo" + "h")
                .font(.system(size: 13))
            
            Spacer()
            
            switch likeModel.activityType {
            case .likePost:
                AsyncImage(url: URL(string: "https://picsum.photos/200")) { image in
                    image.resizable()
                        .frame(width: 40, height: 40)
                } placeholder: {
                    Image("blankpage").resizable()
                        .frame(width: 40, height: 40)
                }
                
            case .mayKnow:
                ActivityButton(action: {}, buttonText: "Follow")
            case .following:
                ActivityButton(action: {}, buttonText: "Following")
            }
        }
        .padding(.vertical, 5)
    }
}

struct ItemLike_Previews: PreviewProvider {
    
    static var previews: some View {
        let likeModel = LikeModel(activityType: ActivityType.mayKnow)
        ItemLike(likeModel: likeModel)
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
