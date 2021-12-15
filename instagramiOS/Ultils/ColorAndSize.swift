//
//  Color.swift
//  instagramiOS
//
//  Created by Huy Nguyễn on 10/12/2021.
//

import Foundation
import SwiftUI

let screenWidth = UIScreen.main.bounds.size.width
let screenHeight = UIScreen.main.bounds.size.height

let Iris = Color(red: 0.317, green: 0.356, blue: 0.831)
let Grape = Color(red: 0.505, green: 0.203, blue: 0.686)
let Vivid = Color(red: 0.866, green: 0.164, blue: 0.482)
let Princeton = Color(red: 0.96, green: 0.521, blue: 0.16)
let GradientBG = LinearGradient(gradient: Gradient(colors: [Iris, Grape, Vivid, Princeton]), startPoint: .bottomTrailing, endPoint: .topLeading)

func reSize(height: CGFloat) -> CGFloat {
    if screenHeight > 740 {
        return height
    } else {
        return height / 2.5
    }
}

func wp(wp: CGFloat) -> CGFloat {
    return screenWidth * wp
}

func hp(hp: CGFloat) -> CGFloat {
    return screenHeight * hp
}
