//
//  NewFeed.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 13/12/2021.
//

import SwiftUI

struct Timeline {
    let id: Int
    let name: String
    let image: String
    let post: String
    let post_image: String
}

let timelines: [Timeline] = [
    Timeline(id: 0, name: "Arupaka", image: "newfeed", post: "This is post content", post_image: "newfeed"),
    Timeline(id: 1, name: "Buta", image: "newfeed", post: "This is post content", post_image: "newfeed"),
    Timeline(id: 2, name: "Hamster", image: "newfeed", post: "This is post content", post_image: "newfeed"),
    Timeline(id: 3, name: "Hiyoko", image: "newfeed", post: "This is post content", post_image: "newfeed"),
    Timeline(id: 4, name: "Inu", image: "newfeed", post: "This is post content", post_image: "newfeed")
]

struct NewFeed: View {
    let timelines: [Timeline]

    var body: some View {
        VStack() {
            ForEach(self.timelines, id: \.id) { (timeline) in
                VStack(spacing: 0) {
                    HStack {
                        Image(timeline.image)
                            .resizable()
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 4))
                            .frame(width: 40, height: 50, alignment: .leading)
                        Text(timeline.name)
                            .fontWeight(.bold)
                        Spacer()
                        Image("dots")
                    }
                        .padding(.horizontal, 5)
                    Divider()
                    if #available(iOS 15.0, *) {
                        AsyncImage(url: URL(string: "https://picsum.photos/200")) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: UIScreen.main.bounds.width, alignment: .center)
                                .clipShape(Rectangle())
                            
                        }
                    placeholder: {
                            Image("blankpage")
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width, alignment: .center)
                            .clipShape(Rectangle())
                        }
                        .padding(.vertical, 3)
                        .padding(.horizontal, 1)
                    } else {
                        // Fallback on earlier versions
                    }
                    Divider()

                    HStack(){
                        ButtonNewfeed(action: {}, image: "like_unselected")
                        ButtonNewfeed(action: {}, image: "comment")
                        ButtonNewfeed(action: {}, image: "send2")
                        Spacer()
                        Button(action: {}, label:  {
                            Image("ribbon")
                                .resizable()
                                .frame(width: 18, height: 22)
                        })
                    }
                    .padding(5)
                    Group {
                        Text(timeline.name).fontWeight(.bold) +
                        Text(timeline.post)
                        Text(timeline.name).fontWeight(.bold) + Text(" and others liked").fontWeight(.bold)
                    }
                        .padding(.horizontal, 5)
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    
                }
            }
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        NewFeed(timelines: timelines)
    }
}

struct ButtonNewfeed: View {
    var action: () -> Void
    var image: String
    var body: some View {
        Button(action: action, label:  {
            Image(image)
                .resizable()
                .frame(width: 20, height: 20)
                .padding(.horizontal, 2)
        })
    }
    
}
