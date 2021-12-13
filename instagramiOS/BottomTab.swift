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
        NavigationView{
            TabView (selection: $selection){
                HomeTab()
                    .tabItem {
                        if selection == 0 {
                            Image("home_selected")
                                .resizable()
                                .renderingMode(.template)
                        } else {
                            Image("home_selected")
                                .renderingMode(.template)
                                .foregroundColor(.gray)
                        }
                    }.tag(0)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                SearchTab()
                    .tabItem {
                        if selection == 1 {
                            Image("search_selected")
                                .renderingMode(.template)
                                .foregroundColor(Grape)
                        } else {
                            Image("search_selected")
                                .renderingMode(.template)
                                .foregroundColor(.gray)
                        }
                    }.tag(1)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                StoryTab()
                    .tabItem {
                        if selection == 2 {
                            Image("filmstrip")
                                .renderingMode(.template)
                                .foregroundColor(Vivid)
                        } else {
                            Image("filmstrip")
                                .renderingMode(.template)
                                .foregroundColor(.gray)
                        }
                    }.tag(2)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                LikeTab()
                    .tabItem {
                        if selection == 3 {
                            Image("like_selected")
                                .renderingMode(.template)
                                .foregroundColor(Princeton)
                        } else {
                            Image("like_selected")
                                .renderingMode(.template)
                                .foregroundColor(.gray)
                        }
                    }.tag(3)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                ProfileTab()
                    .tabItem {
                        if selection == 4 {
                            Image("profile_selected")
                                .renderingMode(.template)
                                .foregroundColor(Color.purple)
                        } else {
                            Image("profile_selected")
                                .renderingMode(.template)
                                .foregroundColor(.gray)
                        }
                    }.tag(4)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            }
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
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
