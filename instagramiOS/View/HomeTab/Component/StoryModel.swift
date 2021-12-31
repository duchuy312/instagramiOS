//
//  StoryModel.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 13/12/2021.
//

import SwiftUI

struct InstagramStory {
    let id: Int
    let name: String
    let image: String
}

let stories: [InstagramStory] = [
    InstagramStory(id: 0, name: "Arupaka", image: randomImage),
    InstagramStory(id: 1, name: "Buta", image: randomImage),
    InstagramStory(id: 2, name: "Hamster", image: randomImage),
    InstagramStory(id: 3, name: "Hiyoko", image: randomImage),
    InstagramStory(id: 4, name: "Inu", image: randomImage)
]
