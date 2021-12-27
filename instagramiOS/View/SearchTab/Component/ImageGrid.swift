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
                let isHorizontalPadding: Bool = (((index - 1) % 3) == 0)
                if #available(iOS 15.0, *) {
                    AsyncImage(url: URL(string: "https://picsum.photos/200")) { image in
                        image
                        
                    } placeholder: {
                        Image("newfeed")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                    }
                    .padding(.vertical, 3)
                    .padding(.horizontal, isHorizontalPadding ? 2 : 0)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
}

