//
//  CommonModel.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 29/12/2021.
//

import Foundation

struct FollowModel: Identifiable {
    var id = UUID()
    var followNumber: String
    var followType: String
}

//struct LikeModel: Decodable, Identifiable {
//    var activityType: LikeType
//}
//
//enum LikeType: Decodable {
//    case likePost
//    case following
//    case mayKnow
//}
