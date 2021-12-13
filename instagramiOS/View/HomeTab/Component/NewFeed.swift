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
                            .frame(width: 50, height: 50, alignment: .leading)
                        Text(timeline.name)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "list.bullet")
                    }
                        .padding(.horizontal, 5)
                    Divider()
                    Image(timeline.post_image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, alignment: .center)
                        .clipShape(Rectangle())
                    Divider()
                    Group {
                        Text(timeline.name).fontWeight(.bold) +
                        Text(timeline.post)
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
