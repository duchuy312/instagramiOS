//
//  ProfileTab.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

struct ProfileTab: View {
    let buttonWidth = (UIScreen.main.bounds.width - 80) / 2
    var body: some View {
        VStack {
            HeaderBarLike()
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    HStack(alignment: .center) {
                        Image("venom-7")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                            .scaledToFill()
                        
                        Spacer()
                        ForEach(followingData) { value in
                            FollowItem(numberFollow: value.followNumber, followType: value.followType)
                        }
                    }
                    .padding(.bottom, 20)
                    Text("info1")
                    Text("info2")
                    Text("info3")
                    Text("info4")
                    Text("info5")
                    Text("info6")
                    HStack() {
                        ButtonText(action: {}, buttonWidth: buttonWidth, buttonText: "Edit Profile")
                        Spacer()
                        ButtonText(action: {}, buttonWidth: buttonWidth, buttonText: "Saved")
                    }
                    HStack(alignment: .center) {
                        ButtonImage(action: {}, image: "grid-1")
                        Spacer()
                        ButtonImage(action: {}, image: "filmstrip")
                        Spacer()
                        ButtonImage(action: {}, image: "user-tag")
                    }
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                }
                .padding(.horizontal, 20)
                ImageGrid()
            }
            Spacer()
            Divider()
        }
    }
}

struct FollowItem: View {
    var numberFollow: String
    var followType: String
    var body: some View {
        VStack {
            Text(numberFollow)
                .font(.headline)
            Text(followType)
                .font(.system(size: 15))
        }
        .padding(.horizontal, 10)
    }
}
struct ButtonText: View {
    var action: () -> Void
    var buttonWidth: Double
    var buttonText: String
    var body: some View {
        Button(action: action, label: {
            Text(buttonText)
                .frame(width: buttonWidth, height: 35)
                .foregroundColor(.black)
                .border(Color.gray, width: 1)
                .cornerRadius(2)
                .padding(.horizontal, 10)
        })
    }
}
struct ButtonImage: View {
    var action: () -> Void
    var image: String
    var body: some View {
        Button(action: action, label:  {
            Image(image)
                .resizable()
                .frame(width: 40, height: 40)
        })
    }
}
struct ProfileTab_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTab()
    }
}
