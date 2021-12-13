//
//  StoryView.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 13/12/2021.
//

import SwiftUI

struct StoryView: View {
    let stories: [InstagramStory]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack() {
                ForEach(stories, id: \.id) { (story) in
                    VStack(spacing: 5) {
                        ZStack {
                            Image(story.image)
                                .resizable()
                                .overlay(
                                    Circle().stroke(LinearGradient(gradient: Gradient(colors: [.yellow, .red, .purple]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 5))
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                        }
                        Text(story.name)
                    }
                    .padding(.horizontal, 6)
                }
            }
                .padding(.top, 5)
                .padding(.leading, 10)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(stories: stories)
    }
}
