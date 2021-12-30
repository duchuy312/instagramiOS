//
//  FakeData.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 29/12/2021.
//

import Foundation

let randomImage = "https://picsum.photos/200"

var followingData: [FollowModel] = [
    FollowModel(followNumber: "205", followType: "Posts"),
    FollowModel(followNumber: "364", followType: "Followers"),
    FollowModel(followNumber: "358", followType: "Following")
]

struct ActivityData {
    let id: Int
    let name: String
    let image: String
    let content: String
    let post_image: String
    let type: String
}


let likeDatas: [ActivityData] = [
    ActivityData(id: 0, name: "Arupaka", image: randomImage, content: "who you might know, is on instagram", post_image: "", type: "know"),
    ActivityData(id: 1, name: "Buta", image: randomImage, content: "and others liked your post", post_image: randomImage, type: "likepost"),
    ActivityData(id: 2, name: "Hamster", image: randomImage, content: "started following you", post_image: "", type: "following"),
    ActivityData(id: 3, name: "ewrwq", image: randomImage, content: "who you might know, is on instagram", post_image: "", type: "know"),
    ActivityData(id: 4, name: "rqwert", image: randomImage, content: "and others liked your post", post_image: randomImage, type: "likepost"),
    ActivityData(id: 5, name: "aweawe", image: randomImage, content: "started following you", post_image: "", type: "following"),
    ActivityData(id: 6, name: "xzczxvz", image: randomImage, content: "who you might know, is on instagram", post_image: "", type: "know"),
    ActivityData(id: 7, name: "fgh", image: randomImage, content: "and others liked your post", post_image: randomImage, type: "likepost"),
    ActivityData(id: 8, name: "rty", image: randomImage, content: "started following you", post_image: "", type: "following"),
    ActivityData(id: 9, name: "ntnyn", image: randomImage, content: "who you might know, is on instagram", post_image: "", type: "know"),
    ActivityData(id: 10, name: "45qvq", image: randomImage, content: "and others liked your post", post_image: randomImage, type: "likepost"),
    ActivityData(id: 11, name: "vwyj", image: randomImage, content: "started following you", post_image: "", type: "following"),
    ActivityData(id: 12, name: "Arupaka", image: randomImage, content: "who you might know, is on instagram", post_image: "", type: "know"),
    ActivityData(id: 13, name: "Buta", image: randomImage, content: "and others liked your post", post_image: randomImage, type: "likepost"),
    ActivityData(id: 14, name: "Hamster", image: randomImage, content: "started following you", post_image: "", type: "following"),
    ActivityData(id: 15, name: "ewrwq", image: randomImage, content: "who you might know, is on instagram", post_image: "", type: "know"),
    ActivityData(id: 16, name: "rqwert", image: randomImage, content: "and others liked your post", post_image: randomImage, type: "likepost"),
    ActivityData(id: 17, name: "aweawe", image: randomImage, content: "started following you", post_image: "", type: "following"),
    ActivityData(id: 18, name: "xzczxvz", image: randomImage, content: "who you might know, is on instagram", post_image: "", type: "know"),
    ActivityData(id: 19, name: "fgh", image: randomImage, content: "and others liked your post", post_image: randomImage, type: "likepost"),
    ActivityData(id: 20, name: "rty", image: randomImage, content: "started following you", post_image: "", type: "following"),
    ActivityData(id: 21, name: "ntnyn", image: randomImage, content: "who you might know, is on instagram", post_image: "", type: "know"),
    ActivityData(id: 22, name: "45qvq", image: randomImage, content: "and others liked your post", post_image: randomImage, type: "likepost"),
    ActivityData(id: 23, name: "vwyj", image: randomImage, content: "started following you", post_image: "", type: "following"),
]
