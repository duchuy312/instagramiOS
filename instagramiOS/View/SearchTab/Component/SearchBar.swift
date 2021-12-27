//
//  SearchBar.swift
//  instagramiOS
//
//  Created by Red on 27/12/2021.
//

import SwiftUI


struct SearchBar: View {
    @Binding var searchText: String
     var body: some View {
         ZStack {
             Rectangle()
                 .foregroundColor(Color(#colorLiteral(red: 0.8871331215, green: 0.8871331215, blue: 0.8871330619, alpha: 1)))
             HStack {
                 Image("search_selected")
                 TextField(Strings.placeholderSearch.rawValue, text: $searchText)
                 
                 if !searchText.isEmpty {
                         Button(action: {
                             self.searchText = ""
                         }) {
                             Image("search_selected")
                                 .padding(5)
                         }
                     }
             }
             .foregroundColor(.gray)
             .padding(.leading, 13)
         }
             .frame(height: 40)
             .cornerRadius(10)
             .padding(.horizontal, 5)
             .padding(.vertical, 10)
     }
 }
