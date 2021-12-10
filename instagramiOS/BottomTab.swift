//
//  BottomTab.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

struct BottomTab: View {
    @State var selection = 0
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    var body: some View {
        TabView (selection: $selection){
            HomeTab()
                .tabItem {
                    if selection == 0 {
                        Image("home_selected")
                            .renderingMode(.template)
                            .foregroundColor(Iris)
                    } else {
                        Image("home_unselected")
                    }
                }.tag(0)
            SearchTab()
                .tabItem {
                    if selection == 1 {
                        Image("search_selected")
                            .renderingMode(.template)
                            .foregroundColor(Grape)
                    } else {
                        Image("search_unselected")
                    }
                }.tag(1)
            StoryTab()
                .tabItem {
                    if selection == 2 {
                        Image("home_selected")
                            .renderingMode(.template)
                            .foregroundColor(Vivid)
                    } else {
                        Image("home_unselected")
                    }
                }.tag(2)
            LikeTab()
                .tabItem {
                    if selection == 3 {
                        Image("like_selected")
                            .renderingMode(.template)
                            .foregroundColor(Princeton)
                    } else {
                        Image("like_unselected")
                    }
                }.tag(3)
            ProfileTab()
                .tabItem {
                    if selection == 4 {
                        Image("profile_selected")
                            .renderingMode(.template)
                            .foregroundColor(Color.purple)
                    } else {
                        Image("profile_unselected")
                    }
                }.tag(4)
        }
    }
}

struct ContentView_Bottom: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            BottomTab()
                .previewInterfaceOrientation(.portrait)
        } else {
            // Fallback on earlier versions
        }
    }
}
