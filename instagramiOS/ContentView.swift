//
//  ContentView.swift
//  instagramiOS
//
//  Created by Red on 06/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
