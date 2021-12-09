//
//  BottomTab.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

struct BottomTab: View {
    init() {
            UITabBar.appearance().backgroundColor = UIColor.white
        }
    var body: some View {
        TabView {
            HomeTab()
                .tabItem {
                    Image("home_selected")
            }
            SearchTab()
                .tabItem {
                    Image("search_selected")
            }
            StoryTab()
                .tabItem {
                    Image("home_selected")
            }
            LikeTab()
                .tabItem {
                    Image("like_selected")
            }
            ProfileTab()
                .tabItem {
                    Image("profile_selected")
            }
        }
    }
}

struct ContentView_Bottom: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            BottomTab()
        } else {
            // Fallback on earlier versions
        }
    }
}
