//
//  ContentView.swift
//  instagramiOS
//
//  Created by Red on 06/12/2021.
//

import SwiftUI
let Iris = Color(red: 0.317, green: 0.356, blue: 0.831)
let Grape = Color(red: 0.505, green: 0.203, blue: 0.686)
let Vivid = Color(red: 0.866, green: 0.164, blue: 0.482)
let Princeton = Color(red: 0.96, green: 0.521, blue: 0.16)

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(){
                Image("Instagram_logo_white").resizable()
                    .frame(width: 250, height: 100)
                  }
                .padding(40)
            
                Divider()
                Spacer()
            }
            .background(LinearGradient(gradient: Gradient(colors: [Iris, Grape, Vivid, Princeton]), startPoint: .bottomTrailing, endPoint: .topLeading))
            .ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
