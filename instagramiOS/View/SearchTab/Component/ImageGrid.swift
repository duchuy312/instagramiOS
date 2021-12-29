//
//  ImageGrid.swift
//  instagramiOS
//
//  Created by Red on 27/12/2021.
//

import SwiftUI

struct ImageGrid: View {
    
    let gridItemLayout = [
        GridItem(spacing: 0),
        GridItem(spacing: 0),
        GridItem(spacing: 0)
    ]
    
    var body: some View {
        LazyVGrid(columns: gridItemLayout, alignment: .center, spacing: 5) {
            ForEach(0..<100) { index in
                if #available(iOS 15.0, *) {
                    AsyncImage(url: URL(string: "https://picsum.photos/200")) { image in
                        image
                            .resizable()
                            .scaledToFill()
                        
                    }
                placeholder: {
                        Image("blankpage")
                            .resizable()
                            .scaledToFill()
                    }
                    .padding(.vertical, 3)
                    .padding(.horizontal, 1)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
}

