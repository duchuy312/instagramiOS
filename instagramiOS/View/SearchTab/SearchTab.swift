//
//  SearchTab.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 08/12/2021.
//

import SwiftUI

struct SearchTab: View {
    @State var searchText = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            SearchBar(searchText: $searchText)
            ScrollView(.vertical) {
                
                ImageGrid()
            }
        }
    }
}

struct SearchTab_Previews: PreviewProvider {
    static var previews: some View {
        SearchTab()
    }
}
