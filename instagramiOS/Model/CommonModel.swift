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

struct LikeModel: Decodable, Identifiable {
    var id = UUID()
    var userImage: String
    var contentAction: String
    var timeActionAgo: String
    var postImage: String
    var activityType: ActivityType
}

enum ActivityType: Decodable {
    case likePost
    case following
    case mayKnow
}
